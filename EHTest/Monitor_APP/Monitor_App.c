#include <stdio.h>
#include <stdlib.h>
#include <linux/fcntl.h>
#include <unistd.h>


int main()
{
	system("sudo ./insmod.sh");
	system("sudo ./workload.sh");
	system("sudo ./rmmod.sh");
	return 0;
}
