#include <linux/string.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/netdevice.h>
#include <linux/pci.h>

#define REC_FILE	"/tmp/LogFile"
#define PAIR_FILE	"/tmp/PairFile"
#define BUG_FILE	"/tmp/BugPairFile"

#define FILE_OPEN_READ		0
#define FILE_OPEN_WRITE		1
#define FILE_OPEN_APPEND	2

#define MAX_FUNC_NUM	50000
#define MAX_BUFFER		10000
#define MAX_PAIR_FUNC_NUM	100

#define MODE_NONE		0
#define MODE_RECORD		1
#define MODE_PAIR		2

#define PAIR_REQUIRE    1
#define PAIR_RELEASE    2

#define f_dentry f_path.dentry

typedef struct PairFunc
{
	char require_func[100];
	char release_func[100];
	int require_pos;
	int release_pos;
}PairFunc;

typedef struct PairData
{
	char require_func[100];
	void *pair_ptr;
	int pair_int;
	struct PairData *next;
	struct PairData *prev;
}PairData;

//open record file
static struct file *OpenFile(char *filename, int mode);

//close file
static void CloseFile(struct file *fp);

//write to record file
static void WriteRecFile(struct file *fp);

//record the information
static void MyRecFunc(char *name, char *caller, char *ret_type);

//read paired functions info from the file
static int ReadPairFromFile(char *file);

//add a node of paired data into the table
static void AddPairData(char *name, void *pair_ptr, int pair_int);

//delete a node of paired data from the table
static void DeletePairData(PairData *node);

//drop the table of paired data
static void DropPairData(void);

//handle paired functions
static void MyPairRec(char *name, int flag, void *pair_ptr, int pair_int);

//check paired data to report bugs
static void CheckPairData(void);
