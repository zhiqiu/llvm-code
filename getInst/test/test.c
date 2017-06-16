//clang++ -Xclang -load -Xclang ../build/lib/libadd2sub.so test.cpp
#include <stdio.h>


int foo(int mod, int a, int b){
	if(mod == 1){
		return a+b;
	}
	else if(mod ==0){
		return a-b;
	}
	else{
		return 0;
	}
}

int main(){
	
	int mod = 1;
	int a =2, b=3;
	printf("%d\n", foo(mod,a,b));
	return 0;
}
