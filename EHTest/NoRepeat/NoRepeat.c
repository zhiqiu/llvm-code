//Extract fault-inject functions
//Usage: ./NoRepeat logfile resfile

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_CHAR	3000000
#define MAX_FUNC	20000
#define IMP_FILE	"../../NoRepeat/imp.txt"

char imp_func[MAX_FUNC][80];
int imp_num = 0;
char can_func[MAX_FUNC][2][80];
int can_num = 0;

char mybuf[MAX_CHAR];

//Read impossible target functions from the file
int ReadImpFile(char *file)
{
	FILE *fp = fopen(file, "r");
	if (!fp)
	{
		printf("GetFunc: Fail to open IMP file!\n");
		return -1;
	}
	while (fscanf(fp, "%s", imp_func[imp_num]) != EOF)
		imp_num ++;
	fclose(fp);
	return 0;
}

//Judge whether the function is impossible to inject fault
int FindImpFunc(char *func)
{
	int i;
	for (i=0; i<imp_num; i++)
	{
		if (strcmp(imp_func[i], func) == 0)
			return 1;
	}
	return 0;
}

//Read log file to get all unrepeated candidate functions
int ReadRecFile(char *file)
{
	int i;
	FILE *fp;
	char str[3][80];

	fp = fopen(file, "r");
	if (!fp)
	{
		printf("GetFunc: Fail to open record file!\n");
		return -1;
	}

	while (fscanf(fp, "%s%s%s", str[0], str[1], str[2]) != EOF)
	{
		for (i=0; i<can_num; i++)
		{
			if (strcmp(str[0], can_func[i][0]) == 0 && 
				strcmp(str[1], can_func[i][1]) == 0)
				break;
		}
		if (i == can_num)
		{
			strcpy(can_func[can_num][0], str[0]);
			strcpy(can_func[can_num][1], str[1]);
			can_num ++;
		}
	}

	fclose(fp);
	return 0;
}

//Print results to the file
int PrintResFile(char *file)
{
	int i;
	FILE *fp;

	fp = fopen(file, "w");
	if (!fp)
	{
		printf("GetFunc: Fail to open result file!\n");
		return -1;
	}

	for (i=0; i<can_num; i++) {
		if (strstr(can_func[i][0], "_is_"))
			continue;
		if (FindImpFunc(can_func[i][0]) == 0)
			fprintf(fp, "%s   %s\n", can_func[i][0], can_func[i][1]);
	}
	
	fclose(fp);
	return 0;
}

int main(int argc, char *argv[])
{
	char can_file[200];
	char source_file[200];
	char res_file[200];

	//Read unrepeated functions from log file
	strcpy(can_file, argv[1]);
	if (ReadRecFile(can_file))
		exit(-1);

	//Read impossible target functions from the file
	if (ReadImpFile(IMP_FILE))
		exit(-1);

	//Print results to the file
	strcpy(res_file, argv[2]);
	if (PrintResFile(res_file))
		exit(-1);

	return 0;
}
