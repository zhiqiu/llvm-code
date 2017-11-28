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
	fp = fopen(filename, "w");
	
	if(!fp){
		printf("open file: %s failed", filename);
	}
	return fp;
}

//write to record file
void WriteRecFile(FILE *fp, int *buffer, int num)
{	
	int i = 0;

	//printf("GetInst: Write file now!\n");
	while (i != num)
	{
		fprintf(fp, "%d %d %d\n", buffer[i], buffer[i+1], buffer[i+2]);
		i += 3;
	}
}

//close record file
void CloseRecFile(FILE *fp)
{
	if (fp)
		fclose(fp);
}

//record the information
void MyRecord(char* FnName, char* BBName, int InstNum, char* Inst)
{
	
	FILE* fp = fopen(MY_FILE, "a");
	if (!record_buffer)
	{
		record_buffer = (int*)malloc(sizeof(int) * MAX_INT);
	}
	fprintf(fp, "%s\t%s\t%d\t%s\n", FnName, BBName, InstNum, Inst);
	if(fp) fclose(fp);
}

