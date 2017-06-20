#include <stdio.h>
#define MY_FILE "/tmp/LogFile"
#define MAX_INT 900000

//open record file
FILE *OpenRecFile(char *filename);

//write to record file
void WriteRecFile(FILE *fp, int *buffer, int num);

//close record file
void CloseRecFile(FILE *fp);

//record the information
void MyRecord(char* FnName, char* BBName, int InstNum, char* Inst);
