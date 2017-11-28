//clang++ -Xclang -load -Xclang ../build/lib/libadd2sub.so test.cpp
#include <iostream>

using namespace std;

int add(int a, int b){
	return a+b;
}

int main(){
	cout << add(2,3) << endl;
	return 0;
}
