#include "MyRecord.h"
#include <iostream>
#include <cstdlib>
#include <cstdlib>

using namespace std;


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
static void WriteRecFile(FILE *fp, int *buffer, int num)
{	
	int i = 0;

	printf("GetInst: Write file now!\n");
	while (i != num)
	{
		fprintf(fp, "%d %d\n", buffer[i], buffer[i+1]);
		i += 2;
	}
}

//close record file
static void CloseRecFile(FILE *fp)
{
	if (fp)
		fclose(fp);
}

//record the information
static void MyRecord(int FnNum, int BBNum)
{
	FILE* fp = OpenRecFile(MY_FILE);
	if (!record_buffer)
	{
		record_buffer = (int*)malloc(sizeof(int) * MAX_INT);
	}
		

	record_buffer[record_num ++] = FnNum;
	record_buffer[record_num ++] = BBNum;

	if (record_num == MAX_INT)
	{
		WriteRecFile(myfp, record_buffer, record_num);
		record_num = 0;
	}
	CloseRecFile(fp);
}

