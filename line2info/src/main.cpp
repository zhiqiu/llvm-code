#include "instructionToLineMap.h"
using namespace std;
using namespace llvm;
int main(int argc, char **argv) 
{ 	
	// If we have a native target, initialize it to ensure it is linked in and
	// usable by the JIT.
	LLVMContext &Context = getGlobalContext();
  
	// Load the bitcode...	
	SMDiagnostic Err;
	Module *mod = ParseIRFile(argv[1], Err, Context);
	if(!mod) 
	{
		errs() << "Unknown error loading Module!\n";
		errs() << "lineToInfo xx.bc minute0001\n";
		return 1;
	}

	//Print function
	std::map<Instruction*, unsigned> m;
	std::map<unsigned, Instruction*> mm;
	int line;
	buildInstructionToLineMap(mod, m);
	map<Instruction*, unsigned>::iterator it;
	for(it = m.begin(); it != m.end(); it ++){
		mm.insert(make_pair(it->second, it->first));
	}
	

	ifstream linefile;
	ofstream infofile;
	linefile.open(argv[2]);
	infofile.open(strcat(argv[2], ".info"));
	while(linefile >> line){
		
		InstructionInfo info = lineToInfo(mod, line, mm);
		infofile << info.toString() << endl;
	}


    return 0;
}
