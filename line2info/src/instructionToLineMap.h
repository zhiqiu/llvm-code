#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"

#include "llvm/Assembly/AssemblyAnnotationWriter.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Linker.h"

#include "llvm/Support/FormattedStream.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Analysis/ValueTracking.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

#include "llvm/DebugInfo.h"

#include <map>
#include <string>
#include <iostream>
#include <sstream>
#include <fstream>



class InstructionToLineAnnotator : public llvm::AssemblyAnnotationWriter {
	public:
		void emitInstructionAnnot(llvm::Instruction *i,
				llvm::formatted_raw_ostream &os) {
			os << "%%%";
			os << (uintptr_t) i;
		}
};

class InstructionInfo{
	private:
		std::string funcName, bbName, inst;
		int instNum;
		int lineNum;
	public:
		InstructionInfo(std::string funcName_, std::string bbName_, std::string inst_, int instNum_, int lineNum_){
			funcName = funcName_;
			bbName = bbName_;
			inst = inst_;
			instNum = instNum_;
			lineNum = lineNum_;
		}
		std::string toString() const{
			std::stringstream res;
			res << lineNum << "\t" << funcName << "\t" << bbName << "\t" << instNum << "\t" << inst;
			return res.str();
		}
};


			
			
void buildInstructionToLineMap(llvm::Module *m, std::map<llvm::Instruction*, unsigned> &out);
InstructionInfo lineToInfo(llvm::Module *m, int lineNumber, std::map<unsigned, llvm::Instruction*> &mm);
