#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

int main() {
    //*******************init*******************
    // Creating the LLVM context
    LLVMContext context;
    // Creating a new module to store functions and IR
    std::unique_ptr<Module> module = std::make_unique<Module>("module_name", context);
    // IRBuilder is used to generate LLVM instructions
    IRBuilder<> builder(context);
    //*****************************************************

    // Defining types for integer (int32) and string (char*) -> int8PtrTy
    Type *intTy = builder.getInt32Ty();
    Type *int8Ty = builder.getInt8PtrTy();


    //************************ADD**************************
    // Creating function signature for sum(i, j)
    std::vector<Type *> params = {intTy, intTy};
    FunctionType *sumTy = FunctionType::get(intTy, params, false);
    Function *sumFunction = Function::Create(sumTy, Function::ExternalLinkage, "sum", *module);

    // Defining arguments for sum function
    Function::arg_iterator sumArgs = sumFunction->arg_begin();
    Value *sumArg1 = &*sumArgs++;
    sumArg1->setName("i");
    Value *sumArg2 = &*sumArgs++;
    sumArg2->setName("j");

    // Creating entry block
    BasicBlock *sumentry = BasicBlock::Create(context, "entry-block", sumFunction);
    builder.SetInsertPoint(sumentry);

    // Performing addition operation i + j
    Value *add = builder.CreateAdd(sumArg1, sumArg2, "add");
    builder.CreateRet(add);

    //**********************************************************

    //************************MULTIPLY**************************
    // Creating function signature for multiply(i, j)
    FunctionType *mulTy = FunctionType::get(intTy, params, false);
    Function *mulFunction = Function::Create(mulTy, Function::ExternalLinkage, "multiply", *module);

    // Defining arguments for multiply function
    Function::arg_iterator mulArgs = mulFunction->arg_begin();
    Value *mulArg1 = &*mulArgs++;
    mulArg1->setName("i");
    Value *mulArg2 = &*mulArgs++;
    mulArg2->setName("j");

    // Creating entry block
    BasicBlock *mulentry = BasicBlock::Create(context, "entry-block", mulFunction);
    builder.SetInsertPoint(mulentry);

    // Performing multiplication operation i * j
    Value *mul = builder.CreateMul(mulArg1, mulArg2, "mul");
    builder.CreateRet(mul);
    //**********************************************************

    //************************SUBTRACT**************************
    // Creating function signature for subtract(i, j)
    FunctionType *subTy = FunctionType::get(intTy, params, false);
    Function *subFunction = Function::Create(subTy, Function::ExternalLinkage, "subtract", *module);

    // Defining arguments for subtract function
    Function::arg_iterator subArgs = subFunction->arg_begin();
    Value *subArg1 = &*subArgs++;
    subArg1->setName("i");
    Value *subArg2 = &*subArgs++;
    subArg2->setName("j");

    // Creating entry block
    BasicBlock *subentry = BasicBlock::Create(context, "entry-block", subFunction);
    builder.SetInsertPoint(subentry);

    // Performing subtraction operation i - j
    Value *sub = builder.CreateSub(subArg1, subArg2, "sub");
    builder.CreateRet(sub);
    //********************************************************

    //************************DIVIDE**************************
    // Creating function signature for divide(i, j)
    FunctionType *divTy = FunctionType::get(intTy, params, false);
    Function *divFunction = Function::Create(divTy, Function::ExternalLinkage, "divide", *module);

    // Defining arguments for divide function
    Function::arg_iterator divArgs = divFunction->arg_begin();
    Value *divArg1 = &*divArgs++;
    divArg1->setName("i");
    Value *divArg2 = &*divArgs++;
    divArg2->setName("j");

    // Creating entry block
    BasicBlock *diventry = BasicBlock::Create(context, "entry-block", divFunction);
    builder.SetInsertPoint(diventry);

    // Performing division operation i / j (integer division)
    Value *div = builder.CreateSDiv(divArg1, divArg2, "div");
    builder.CreateRet(div);
    //********************************************************
    
    //************************BITWISE AND**************************
    // Creating function signature for bitwise AND operation (a & b)
    FunctionType *bitwiseAndType = FunctionType::get(intTy, {intTy, intTy}, false);
    Function *bitwiseAndFunc = Function::Create(bitwiseAndType, Function::ExternalLinkage, "bitwiseAnd", module.get());

    // Creating entry block
    BasicBlock *andEntry = BasicBlock::Create(context, "entry-block", bitwiseAndFunc);
    builder.SetInsertPoint(andEntry);

    // Defining arguments for bitwiseAnd function
    Function::arg_iterator andArgs = bitwiseAndFunc->arg_begin();
    Value *a = &*andArgs++;
    a->setName("a");
    Value *b = &*andArgs;
    b->setName("b");

    // Performing bitwise AND operation (a & b)
    Value *and_res = builder.CreateAnd(a, b, "and_result");
    builder.CreateRet(and_res);
    //********************************************************

    //************************REVERSE BITS OF 32-BIT INT**************************

    // Creating function signature for reverseBits(n)
     FunctionType *reverseBitsTy = FunctionType::get(intTy, {intTy}, false);
    Function *reverseBitsFunction = Function::Create(reverseBitsTy, Function::ExternalLinkage, "reverseBits", module.get());

    // Define argument for reverseBits function
    Function::arg_iterator revArgs = reverseBitsFunction->arg_begin();
    Value *revArg = &*revArgs;
    revArg->setName("n");

    // Create entry block
    BasicBlock *revEntry = BasicBlock::Create(context, "entry-block", reverseBitsFunction);
    builder.SetInsertPoint(revEntry);

    // Initialize result to 0
    Value *result = builder.getInt32(0);

    // Loop to reverse bits
    for (int i = 0; i < 32; i++) {
        // Extract the least significant bit (LSB) of revArg
        Value *bit = builder.CreateAnd(revArg, builder.getInt32(1), "bit");

        // Shift result left by 1 and OR it with the extracted bit
        result = builder.CreateShl(result, builder.getInt32(1), "shiftLeft");
        result = builder.CreateOr(result, bit, "orResult");

        // Shift revArg right by 1 to process the next bit
        revArg = builder.CreateLShr(revArg, builder.getInt32(1), "shiftRight");
    }

    // Return the result
    builder.CreateRet(result);

    //********************************************************

    // Creating main function signature
    FunctionType *mainType = FunctionType::get(intTy, false);
    Function *mainFunction = Function::Create(mainType, Function::ExternalLinkage, "main", module.get());

    // Creating main function entry block
    BasicBlock *mainEntry = BasicBlock::Create(context, "main-entry", mainFunction);
    builder.SetInsertPoint(mainEntry);

    // Calling sum function with arguments 5 and 3
    Value *sum1 = builder.getInt32(5);
    Value *sum2 = builder.getInt32(3);
    Value *sumResult = builder.CreateCall(sumFunction, {sum1, sum2}, "sumResult");

    // Calling multiply function with arguments 9 and 4
    Value *mul1 = builder.getInt32(9);
    Value *mul2 = builder.getInt32(4);
    Value *mulResult = builder.CreateCall(mulFunction, {mul1, mul2}, "mulResult");

    // Calling divide function with arguments 36 and 6
    Value *div1 = builder.getInt32(36);
    Value *div2 = builder.getInt32(6);
    Value *divResult = builder.CreateCall(divFunction, {div1, div2}, "divResult");

    // Calling subtract function with arguments 20 and 13
    Value *sub1 = builder.getInt32(20);
    Value *sub2 = builder.getInt32(13);
    Value *subResult = builder.CreateCall(subFunction, {sub1, sub2}, "subResult");


    // Calling bitwise AND function with arguments 15 and 5
    Value *a1 = builder.getInt32(10);
    Value *a2 = builder.getInt32(5);
    Value *andResult = builder.CreateCall(bitwiseAndFunc, {a1, a2}, "andResult");

    Value *r1 = builder.getInt32(0b1010);
    Value *revResult = builder.CreateCall(reverseBitsFunction, {r1}, "revResult");

    // Defining printf function signature
    FunctionType *printfType = FunctionType::get(intTy, {int8Ty}, true);
    Function *printfFunction = Function::Create(printfType, Function::ExternalLinkage, "printf", module.get());

    // Creating format strings for printing output
    Constant *helloWorldStr = builder.CreateGlobalStringPtr("Hello World!\n", "helloWorldStr");
    Constant *sumFormat = builder.CreateGlobalStringPtr("Sum of %d and %d is: %d\n", "sumFormat");
    Constant *mulFormat = builder.CreateGlobalStringPtr("Multiply of %d and %d is: %d\n", "mulFormat");
    Constant *divFormat = builder.CreateGlobalStringPtr("Divide of %d and %d is: %d\n", "divFormat");
    Constant *subFormat = builder.CreateGlobalStringPtr("Subtract of %d and %d is: %d\n", "subFormat");
    Constant *andFormat = builder.CreateGlobalStringPtr("Bitwise AND of %d and %d is: %d\n", "andFormat");
    Constant *revFormat = builder.CreateGlobalStringPtr("Reversed bits of %d is: %d\n", "revFormat");


    // Calling printf to print messages and function results
    builder.CreateCall(printfFunction, {helloWorldStr});
    builder.CreateCall(printfFunction, {sumFormat, sum1, sum2, sumResult});
    builder.CreateCall(printfFunction, {mulFormat, mul1, mul2, mulResult});
    builder.CreateCall(printfFunction, {divFormat, div1, div2, divResult});
    builder.CreateCall(printfFunction, {subFormat, sub1, sub2, subResult});
    builder.CreateCall(printfFunction, {andFormat, a1, a2, andResult});
    builder.CreateCall(printfFunction, {revFormat, r1, revResult});

    // Returning 0 from main function
    builder.CreateRet(builder.getInt32(0));

    // Printing the LLVM IR code to console
    module->print(outs(), nullptr);
    return 0;
}