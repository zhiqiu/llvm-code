#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Function.h"

#include "llvm/ADT/Triple.h"
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/CodeGen/LinkAllCodegenComponents.h"
#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/ExecutionEngine/Interpreter.h"
#include "llvm/ExecutionEngine/JIT.h"
#include "llvm/ExecutionEngine/JITEventListener.h"
#include "llvm/ExecutionEngine/MCJIT.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/PluginLoader.h"
#include "llvm/Support/PrettyStackTrace.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Process.h"
#include "llvm/Support/Signals.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/Analysis/Verifier.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace llvm;
using namespace std;

#define MY_FILE "/tmp/LogFile"
#define LOG_FILE "LogFile"

//Declare the extern function of MyRecord
Function* RecordInfo(Module *mod);

//Insert record function
void CreateRecord(BasicBlock *MyBB, int FnNum, int BBNum, Module *mod);

//Handle function information
void LogFunction(Module* mod);

//Print basicblock(0) or instruction(1) names
void PrintInfo(int option, Module* mod);
