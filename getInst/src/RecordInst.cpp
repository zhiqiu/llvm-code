#include "RecordInst.h"

//External function pointer
static Function *func_rec;

//Declare the extern function of MyRecord
Function* RecordInfo(Module *mod)
{
	//Initialize paramater's type
	Type *PtrTy = Type::getInt8PtrTy(mod->getContext());
	IntegerType *IntTy = IntegerType::get(mod->getContext(), 32);
	std::vector<Type*>FuncTy_args;
	FuncTy_args.push_back(PtrTy);
	FuncTy_args.push_back(PtrTy);
	FuncTy_args.push_back(IntTy);
	FuncTy_args.push_back(PtrTy);
	FunctionType* FuncTy = FunctionType::get(/*Result=*/Type::getVoidTy(mod->getContext()),
			/*Params=*/FuncTy_args,
			/*isVarArg=*/false);

	//Create a function declaration
	Function* func = mod->getFunction("MyRecord");
	if (func == NULL) 
	{
		func = Function::Create(/*Type=*/FuncTy,
				/*Linkage=*/GlobalValue::ExternalLinkage,
				/*Name=*/"MyRecord", mod);
		func->setCallingConv(CallingConv::C);
	}
	//AttributeSet int32_call_PAL;
	//func->setAttributes(int32_call_PAL);
	return func;
}
//Create words to paramater
Constant *CreateWords(Module *mod, string str)
{
	//look up the word in global value table
	string mystr = "%%" + str;
	GlobalValue *my_name = mod->getNamedValue(mystr);
	if (my_name)
	{
		GlobalVariable *my_global = cast <GlobalVariable> (my_name);
		ConstantInt* const_int = ConstantInt::get(mod->getContext(), APInt(32, 0));
		std::vector<Constant*> const_ptr_indices;
		const_ptr_indices.push_back(const_int);
		const_ptr_indices.push_back(const_int);
		Constant* const_ptr = ConstantExpr::getGetElementPtr(my_global, const_ptr_indices);
		return const_ptr;
	}

	//if not find it, then create a new word in global value table
	ArrayType *ArrayTy = ArrayType::get(IntegerType::get(mod->getContext(), 8), str.length()+1);
	GlobalVariable *global_name = new GlobalVariable(*mod, ArrayTy, true, 
			GlobalValue::PrivateLinkage, 0, mystr);
	global_name->setAlignment(1);

	//Constant Definitions 
	Constant* const_array = ConstantDataArray::getString(mod->getContext(), str, true);
	ConstantInt* const_int = ConstantInt::get(mod->getContext(), APInt(32, 0));
	std::vector<Constant*> const_ptr_indices;
	const_ptr_indices.push_back(const_int);
	const_ptr_indices.push_back(const_int);
	Constant* const_ptr = ConstantExpr::getGetElementPtr(global_name, const_ptr_indices);

	//Global Variable Definitions
	global_name->setInitializer(const_array);
	return const_ptr;
}

//Insert record function
void CreateRecord(Instruction *MyInst, string FnName, string BBName, int InstNum, string Inst, Module *mod)
{

	Value *InstNum_val = ConstantInt::get(mod->getContext(), APInt(32, InstNum));
	Constant *FnName_str = CreateWords(mod, FnName);
	Constant *BBName_str = CreateWords(mod, BBName);
	Constant *Inst_str = CreateWords(mod, Inst);
	//get the first instruction in basic block
	BasicBlock* MyBB = MyInst->getParent();
	BasicBlock::iterator it_BB = MyBB->begin();	
	Instruction *FirstIn = &(*it_BB);
	if (MyInst->getOpcode() == Instruction::PHI && MyInst == FirstIn)
		MyInst = &(*(++ it_BB));

	//prepare all value
	std::vector<Value*> para;
	para.push_back(FnName_str);
	para.push_back(BBName_str);
	para.push_back(InstNum_val);
	para.push_back(Inst_str);

	//put MyRecord at the first place of the basic block
	//If the first instruction is PHI, it will be placed at the second
	CallInst *mycall;
	mycall = CallInst::Create(func_rec, para, "", MyInst);
	mycall->setCallingConv(CallingConv::C);
	mycall->setTailCall(false);
}

//Handle function information
void LogFunction(Module *mod)
{
	int FnNum, BBNum, InstNum;

	//Declare external functions
	func_rec = RecordInfo(mod);

	//Deal with each basic block
	FnNum = 0;
	for (Module::iterator it_MM = mod->begin(); it_MM != mod->end(); it_MM++)
	{
		Function *MyFn = &(*it_MM);
		BBNum = 0;
		for (Function::iterator it_Fn = MyFn->begin(); it_Fn != MyFn->end(); it_Fn++)
		{
			BasicBlock *MyBB = &(*it_Fn);
			InstNum = 0;
			for (BasicBlock::iterator it_BB = MyBB->begin(); it_BB != MyBB->end(); it_BB++){
				Instruction *MyInst = &(*it_BB);
				string str;	
				raw_string_ostream stream(str);
				stream << *MyInst;
				CreateRecord(MyInst, MyFn->getName().str(), MyBB->getName().str(), InstNum, stream.str(), mod);
				InstNum ++;
			}
			BBNum ++;
		}
		FnNum ++;
	}
}

//Print basicblock(0) or instruction(1) names
void PrintInfo(int option, Module* mod)
{
	FILE *fp_read, *fp_write;
	int i, FnNum, BBNum, tmp = -1, InstID = 0;

	fp_read = fopen(MY_FILE, "r");
	fp_write = fopen(LOG_FILE, "w");
	if (!fp_read || !fp_write)
	{
		outs() << "Fail to open file!\n";
	}

	if (!(option == 0 || option == 1))
	{	
		outs() << "Invalid option!\n";
		return;
	}


	fclose(fp_read);
	fclose(fp_write);
}
