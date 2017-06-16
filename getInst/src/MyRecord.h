#include <cstdio>
#define MY_FILE "/tmp/LogFile"
#define MAX_INT 800000

//open record file
FILE *OpenRecFile(char *filename);

//write to record file
static void WriteRecFile(struct file *fp, int *buffer, int num);

//close record file
static void CloseRecFile(struct file *fp);

//record the information
static void MyRecord(int FnNum, int InstNum);
