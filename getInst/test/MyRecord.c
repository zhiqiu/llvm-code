#include "MyRecord.h"
#include <stdio.h>
#include <stdlib.h>



FILE *myfp = NULL;
int *record_buffer = NULL;
int record_num = 0;;

//open record file
FILE *OpenRecFile(char *filename)
{

	FILE *fp;
	fp = fopen(filename, "a");
	
	if(!fp){
		printf("open file: %s failed", filename);
	}
	return fp;
}

//write to record file
void WriteRecFile(FILE *fp, int *buffer, int num)
{	
	int i = 0;

	printf("GetInst: Write file now!\n");
	while (i != num)
	{
		printf("%d %d %d\n", buffer[i], buffer[i+1], num);
		fprintf(fp, "%d %d\n", buffer[i], buffer[i+1]);
		i += 2;
	}
	printf("write done\n");
}

//close record file
void CloseRecFile(FILE *fp)
{
	if (fp)
		fclose(fp);
}

//record the information
void MyRecord(int FnNum, int BBNum)
{
	FILE* fp = OpenRecFile(MY_FILE);
	if (!record_buffer)
	{
		printf("malloc\n");
		record_buffer = (int*)malloc(sizeof(int) * MAX_INT);
	}
		

	record_buffer[record_num ++] = FnNum;
	record_buffer[record_num ++] = BBNum;

	if (record_num == MAX_INT)
	{
		WriteRecFile(fp, record_buffer, record_num);
		record_num = 0;
	}
	CloseRecFile(fp);
}

