// llvm version 3.4
#include "instructionToLineMap.h"
using namespace std;
using namespace llvm;



void buildInstructionToLineMap(Module *m,
		std::map<Instruction*, unsigned> &out) {  
	InstructionToLineAnnotator a;
	std::string str;
	llvm::raw_string_ostream os(str);
	m->print(os, &a);
	os.flush();
	const char *s;

	unsigned line = 1;
	for (s=str.c_str(); *s; s++) {
		if (*s=='\n') {
			line++;
			if (s[1]=='%' && s[2]=='%' && s[3]=='%') {
				s += 4;
				char *end;
				unsigned long long value = strtoull(s, &end, 10);
				if (end!=s) {
					out.insert(std::make_pair((Instruction*) value, line));
				}
				s = end;
			}
		}
	}
}



InstructionInfo lineToInfo(Module *m, int lineNumber, std::map<unsigned, Instruction *> &mm){
	
	map<unsigned, Instruction *>:: iterator it = mm.find(lineNumber);
	if(it != mm.end()){
		Instruction *inst = it->second;
		BasicBlock *bb = inst->getParent();
		Function *fn = bb->getParent();
		string str;
		raw_string_ostream stream(str);
		stream << *inst;
		int instNum = -1, i = 0;
		for (BasicBlock::iterator itb = bb->begin(); itb != bb->end(); itb ++){
			i ++;
			if(inst == &(*itb)){
				instNum = i;
				break;
			}
		}
		return InstructionInfo(fn->getName().str(), bb->getName().str(), stream.str(), instNum, lineNumber);
	}
}



	

