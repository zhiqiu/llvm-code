#include "Record.h"

static ExecutionEngine *EE = 0;
static LLVMContext TheContext;

int main(int argc, char **argv) 
{ 	
	// If we have a native target, initialize it to ensure it is linked in and
	// usable by the JIT.
	InitializeNativeTarget();
	LLVMContext &Context = TheContext;

	cout << &Context << endl;
	int opt;
	if (strcmp(argv[1], "-r") == 0)  
		opt = LLVM_RECORD;
	else if (strcmp(argv[1], "-a") == 0)
		opt = LLVM_ANALYZE;
	else if (strcmp(argv[1], "-f") == 0)
		opt = LLVM_INJECT;
	else
	{
		outs() << "Invalid option!\n";
		exit(-1);
	}

	// Load the bitcode...	
	SMDiagnostic Err;
	unique_ptr<Module> mod_u(parseIRFile(argv[2], Err, Context));
	if(!mod_u) 
	{
		Err.print("EHtest", errs()) ;
		errs() << "Unknown error loading Module!\n";
		exit(-1);
	}
	
	//outs() << "\nidentifier:" << mod_u->getModuleIdentifier() << "\n";
	//outs() << "\nmod:" << mod_u.get() << "\n";
	//Create the engine
	//EngineBuilder builder(mod_u);
	//EE = builder.create();
	//if (!EE) 
	//{
	//	errs() << "Unknown error creating EE!\n";
	//	exit(-1);
	//}
	Module* mod = mod_u.get();	
	//outs() << "\nmod:" << mod << "\n";
	outs() << "\nEHTest: Start handling " << argv[2] << "\n";

	if (opt == LLVM_RECORD)
		LogFunction(mod);
	else if (opt == LLVM_ANALYZE)
		AnalyzeSource(mod, argv[3], argv[4]);
	else if (opt == LLVM_INJECT)
		InjectFault(mod, argv[3], argv[4], argv[5]);

	outs() << "\nEHTest: Finish handling " << argv[2] << "\n\n";

	verifyModule(*mod);
	
	
	//Create the new .bc file according to Module
	if (opt == LLVM_RECORD || opt == LLVM_INJECT)
	{
		std::error_code err;
		//tool_output_file* out = new tool_output_file(argv[2],  sys::fs::F_RW);
		std::unique_ptr<tool_output_file> out(new tool_output_file(argv[2], err,  sys::fs::F_None));
		//outs() << "\nEHTest: writing" << argv[2] << "\n\n";
		//outs() << out << "\n";
		WriteBitcodeToFile(mod, out->os());
		out->keep();
	}

    return 0;
}
