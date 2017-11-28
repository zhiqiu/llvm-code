#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/Instructions.h"

using namespace llvm;
	
namespace {
	struct Test : public FunctionPass {
		static char ID;
		Test() : FunctionPass(ID) {}

		virtual bool runOnFunction(Function &F) {
			Function *tmp = &F;
			// 遍历函数中的所有基本块
			for (Function::iterator bb = tmp->begin(); bb != tmp->end(); ++bb) {
				// 遍历基本块中的每条指令
				for (BasicBlock::iterator inst = bb->begin(); inst != bb->end(); ++inst) {
					// 是否是add指令
					if (inst->isBinaryOp()) {
						if (inst->getOpcode() == Instruction::Add) {
							ob_add(cast<BinaryOperator>(inst));
						}
					}
				}
			}

			return false;
		}
		        // a-b === a+(-b)
        bool ob_add(BinaryOperator *bo) {
            BinaryOperator *op = NULL;
             
            if (bo->getOpcode() == Instruction::Add) {
                // 生成 (－b)
                op = BinaryOperator::CreateNeg(bo->getOperand(1), "", bo);
                // 生成 a+(-b)
                op = BinaryOperator::Create(Instruction::Add, bo->getOperand(0), op, "", bo);
                 
                op->setHasNoSignedWrap(bo->hasNoSignedWrap());
                op->setHasNoUnsignedWrap(bo->hasNoUnsignedWrap());
            }
             
            // 替换所有出现该指令的地方
            bo->replaceAllUsesWith(op);
        }
	};
}

char Test::ID = 0;

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerPass(const PassManagerBuilder &,
		legacy::PassManagerBase &PM) {
	PM.add(new Test());
}
static RegisterStandardPasses
RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible,
		registerPass);

