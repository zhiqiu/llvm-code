#include "MyMonitor.h"
MODULE_LICENSE("GPL");

static int run_mode = MODE_NONE;
static char *bugfile;

static struct file *rec_fp = NULL;
static char name_buf[MAX_FUNC_NUM][50];
static char caller_buf[MAX_FUNC_NUM][50];;
static char type_buf[MAX_FUNC_NUM][50];;
static int rec_num = 0;

static PairFunc pair_func[MAX_PAIR_FUNC_NUM];
static int pair_func_num = 0;

static PairData *pair_data_head;
static PairData *pair_data_tail;

//open file
static struct file *OpenFile(char *filename, int mode)
{
	struct file *fp = NULL;
	
	if (mode == FILE_OPEN_READ)
		fp = filp_open(filename, O_RDONLY, 0666);
	else if (mode == FILE_OPEN_WRITE)
		fp = filp_open(filename, O_WRONLY | O_CREAT, 0666);
	else if (mode == FILE_OPEN_APPEND)
		fp = filp_open(filename, O_WRONLY | O_APPEND, 0666);

	if (IS_ERR(fp))
		return NULL;
	printk(KERN_EMERG "MyMonitor: open file ok! fp: %x \n", fp);
	return fp;
}

//close file
static void CloseFile(struct file *fp)
{
	if (fp)
		filp_close(fp, current->files);
}

//write to record file
static void WriteRecFile(struct file *fp)
{	
	mm_segment_t old_fs;
	int i;
	char str[200];

	printk(KERN_EMERG "MyMonitor: Write record file now! fp: %x \n", fp);
	old_fs = get_fs();
	set_fs(get_ds());
	for (i=0; i<rec_num; i++)
	{
		sprintf(str, "%s %s %s\n", name_buf[i], caller_buf[i], type_buf[i]);
		printk(KERN_EMERG "%s %s %s\n", name_buf[i], caller_buf[i], type_buf[i]);
		// fp->f_op->write is null in linux4.4
		vfs_write(fp, (char *)str, strlen(str), &fp->f_pos);
	}
	set_fs(old_fs);
}

//record the information
static void MyRecFunc(char *name, char *caller, char *ret_type)
{
	strcpy(name_buf[rec_num], name);
	strcpy(caller_buf[rec_num], caller);
	strcpy(type_buf[rec_num], ret_type);
	rec_num ++;

	if (rec_num == MAX_FUNC_NUM)
	{
		WriteRecFile(rec_fp);
		rec_num = 0;
	}
}
EXPORT_SYMBOL(MyRecFunc);

//read paired functions info from the file
static int ReadPairFromFile(char *file)
{
	struct file *fp;
	struct inode *node;
	off_t fsize;
	mm_segment_t old_fs;
	char *buffer, temp[100];
	int len, i, j, flag, ret = 0;

	fp = OpenFile(file, FILE_OPEN_READ);
	if (!fp)
	{
		printk(KERN_EMERG "MyMonitor: Fail to open pair file!\n");
		ret = -ENOENT;
		goto err_file_open;
	}

	buffer = kzalloc(sizeof(char) * MAX_BUFFER, GFP_KERNEL);
	if (!buffer)
	{
		printk(KERN_EMERG "MyMonitor: Fail to allocate buffer!\n");
		ret = -ENOMEM;
		goto err_alloc_mem;
	}

	node = fp->f_dentry->d_inode;
	fsize = node->i_size;
	old_fs = get_fs();
	set_fs(KERNEL_DS);
	//fp->f_op->read(fp, (char *)buffer, fsize, &fp->f_pos);
	vfs_read(fp, (char *)buffer, fsize, &fp->f_pos);
	set_fs(old_fs);

	i = 0;
	j = 0;
	flag = 0;
	len = strlen(buffer);
	while (i < len)
	{
		if (buffer[i] != ' ' && buffer[i] != '\t' && buffer[i] != '\n')
			temp[j++] = buffer[i];
		else
		{
			if (pair_func_num >= MAX_PAIR_FUNC_NUM)
			{
				printk(KERN_EMERG "MyMonitor: The number of paired functions is over the maximum(%d)!\n", 
						MAX_PAIR_FUNC_NUM);
				ret = -EOVERFLOW;
				goto err_over_max;
			}

			temp[j] = '\0';
			if (flag == 0)
				strcpy(pair_func[pair_func_num].require_func, temp);
			else if (flag == 1)
				strcpy(pair_func[pair_func_num].release_func, temp);
			else if (flag == 2)
				sscanf(temp, "%d", &(pair_func[pair_func_num].require_pos));
			else if (flag == 3)
				sscanf(temp, "%d", &(pair_func[pair_func_num].release_pos));
			flag ++;
			if (flag == 4)
			{
				pair_func_num ++;

				flag = 0;
			}
			j = 0;
		}
		i ++;
	}
	
err_over_max:
	kfree(buffer);
err_alloc_mem:
	CloseFile(fp);
err_file_open:
	return ret;
}

//add a node of paired data into the table
static void AddPairData(char *name, void *pair_ptr, int pair_int)
{
	PairData *temp;

	temp = (PairData *)kzalloc(sizeof(PairData), GFP_ATOMIC);
	strcpy(temp->require_func, name);
	temp->pair_ptr = pair_ptr;
	temp->pair_int = pair_int;
	temp->prev = NULL;
	temp->next = NULL;

	if (!pair_data_head)
	{
		pair_data_head = temp;
		pair_data_tail = temp;
	}
	else
	{
		pair_data_tail->next = temp;
		temp->prev = pair_data_tail;
		pair_data_tail = temp;
	}
}

//delete a node of paired data from the table
static void DeletePairData(PairData *node)
{
	if (node == pair_data_head)
		pair_data_head = node->next;
	if (node == pair_data_tail)
		pair_data_tail = node->prev;
	if (node->prev)
		node->prev->next = node->next;
	if (node->next)
		node->next->prev = node->prev;
	kfree(node);
}

//drop the table of paired data
static void DropPairData()
{
	PairData *swap;

	while (pair_data_head)
	{
		swap = pair_data_head;
		pair_data_head = pair_data_head->next;
		kfree(swap);
	}
}

//handle paired functions
static void MyPairRec(char *name, int flag, void *pair_ptr, int pair_int)
{
	int i;
	char str[100];
	PairData *swap;

	if (flag == PAIR_REQUIRE)
	{
		swap = pair_data_head;
		while (swap)
		{
			if (strcmp(swap->require_func, name) == 0)
			{
				if (swap->pair_ptr == pair_ptr && swap->pair_int == pair_int)
					break;
			}
			swap = swap->next;
		}
		if (!swap)
			AddPairData(name, pair_ptr, pair_int);
	}

	else if (flag == PAIR_RELEASE)
	{
		for (i=0; i<pair_func_num; i++)
		{
			if (strcmp(pair_func[i].release_func, name) == 0)
			{
				strcpy(str, pair_func[i].require_func);
				swap = pair_data_head;
				while (swap)
				{
					if (strcmp(swap->require_func, str) == 0)
					{
						if (swap->pair_ptr == pair_ptr && 
							swap->pair_int == pair_int)
						{
							DeletePairData(swap);
							break;
						}
					}
					swap = swap->next;
				}
				if (swap)
					break;
			}
		}
	}
}
EXPORT_SYMBOL(MyPairRec);

//check paired data to report bugs
void CheckPairData()
{
	PairData *swap = pair_data_head;
	mm_segment_t old_fs;
	struct file *fp;
	char str[100];

	fp = OpenFile(bugfile, FILE_OPEN_APPEND);
	if (!fp)
	{
		printk(KERN_EMERG "MyMonitor: Fail to open bug file!\n");
		return;
	}

	old_fs = get_fs();
	set_fs(get_ds());
	//No bugs
	if (!swap)
	{
		strcpy(str, "None\n");
		//fp->f_op->write(fp, (char *)str, strlen(str), &fp->f_pos);
		vfs_write(fp, (char *)str, strlen(str), &fp->f_pos);	
	}
	//Bugs exist
	while (swap)
	{
		sprintf(str, "%s\n", swap->require_func);
		//fp->f_op->write(fp, (char *)str, strlen(str), &fp->f_pos);	
		vfs_write(fp, (char *)str, strlen(str), &fp->f_pos);	
		swap = swap->next;
	}
	set_fs(old_fs);

	CloseFile(fp);
	DropPairData();
}

static int __init record_init_module(void)
{
	int ret = 0;

	if (run_mode == MODE_RECORD)
	{
		printk(KERN_EMERG "MyMonitor: Start record mode!\n");
		rec_num = 0;
		rec_fp = OpenFile(REC_FILE, FILE_OPEN_WRITE);
		if (!rec_fp) 
		{
			printk(KERN_EMERG "MyMonitor: Fail to open record file!\n");
			ret = -ENOENT;
		}
	}

	else if (run_mode == MODE_PAIR)
	{
		pair_func_num = 0;
		pair_data_head = NULL;
		pair_data_tail = NULL;
		printk(KERN_EMERG "MyMonitor: Start pair mode!\n");
		ret = ReadPairFromFile(PAIR_FILE);
	}
	else
	{
		printk(KERN_EMERG "MyMonitor: Unknown mode!\n");
		ret = -ENODATA;
	}

	return ret;
}

static void __exit record_exit_module(void)
{
	if (run_mode == MODE_RECORD)
	{
		WriteRecFile(rec_fp);
		CloseFile(rec_fp);
	}
	else if (run_mode == MODE_PAIR)
		CheckPairData();
}

module_param(run_mode, int, S_IRUGO);
module_param(bugfile, charp, S_IRUGO);
module_init(record_init_module);
module_exit(record_exit_module);
