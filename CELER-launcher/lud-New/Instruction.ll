; ModuleID = 'CountBB.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@total_BB = global i64 0, align 8
@total_Instruction = global i64 0, align 8
@total_cmp = global i64 0, align 8
@total_Ret = global i64 0, align 8
@total_Br = global i64 0, align 8
@total_Switch = global i64 0, align 8
@total_IndirectBr = global i64 0, align 8
@total_Invoke = global i64 0, align 8
@total_Resume = global i64 0, align 8
@total_Unreachable = global i64 0, align 8
@total_Add = global i64 0, align 8
@total_FAdd = global i64 0, align 8
@total_Sub = global i64 0, align 8
@total_FSub = global i64 0, align 8
@total_Mul = global i64 0, align 8
@total_FMul = global i64 0, align 8
@total_UDiv = global i64 0, align 8
@total_SDiv = global i64 0, align 8
@total_FDiv = global i64 0, align 8
@total_URem = global i64 0, align 8
@total_SRem = global i64 0, align 8
@total_FRem = global i64 0, align 8
@total_Shl = global i64 0, align 8
@total_LShr = global i64 0, align 8
@total_AShr = global i64 0, align 8
@total_And = global i64 0, align 8
@total_Or = global i64 0, align 8
@total_Xor = global i64 0, align 8
@total_Alloca = global i64 0, align 8
@total_Load = global i64 0, align 8
@total_Store = global i64 0, align 8
@total_GetElementPtr = global i64 0, align 8
@total_Fence = global i64 0, align 8
@total_AtomicCmpXchg = global i64 0, align 8
@total_AtomicRMW = global i64 0, align 8
@total_Trunc = global i64 0, align 8
@total_ZExt = global i64 0, align 8
@total_SExt = global i64 0, align 8
@total_FPToUI = global i64 0, align 8
@total_FPToSI = global i64 0, align 8
@total_UIToFP = global i64 0, align 8
@total_SIToFP = global i64 0, align 8
@total_FPTrunc = global i64 0, align 8
@total_FPExt = global i64 0, align 8
@total_PtrToInt = global i64 0, align 8
@total_IntToPtr = global i64 0, align 8
@total_BitCast = global i64 0, align 8
@total_AddrSpaceCast = global i64 0, align 8
@total_ICmp = global i64 0, align 8
@total_FCmp = global i64 0, align 8
@total_Call = global i64 0, align 8
@total_Select = global i64 0, align 8
@total_UserOp1 = global i64 0, align 8
@total_UserOp2 = global i64 0, align 8
@total_VAArg = global i64 0, align 8
@total_ExtractElement = global i64 0, align 8
@total_InsertElement = global i64 0, align 8
@total_ShuffleVector = global i64 0, align 8
@total_ExtractValueInst = global i64 0, align 8
@total_InsertValueInst = global i64 0, align 8
@total_LandingPadInst = global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"BB\09 %lld\0A\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Instruction\09 %lld\0A\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"Cmp\09 %lld\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"Ret\09 %lld\0A\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"Br\09 %lld\0A\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"Switch\09 %lld\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"IndirectBr\09 %lld\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Invoke\09 %lld\0A\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Resume\09 %lld\0A\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"Unreachable\09 %lld\0A\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"Add\09 %lld\0A\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"FAdd\09 %lld\0A\00", align 1
@.str12 = private unnamed_addr constant [11 x i8] c"Sub\09 %lld\0A\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"FSub\09 %lld\0A\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"Mul\09 %lld\0A\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"FMul\09 %lld\0A\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"UDiv\09 %lld\0A\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"SDiv\09 %lld\0A\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"FDiv\09 %lld\0A\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"URem\09 %lld\0A\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c"SRem\09 %lld\0A\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"FRem\09 %lld\0A\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"Shl\09 %lld\0A\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"LShl\09 %lld\0A\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"AShr\09 %lld\0A\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"And\09 %lld\0A\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"Or\09 %lld\0A\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"Xor\09 %lld\0A\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"Alloca\09 %lld\0A\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"Load\09 %lld\0A\00", align 1
@.str30 = private unnamed_addr constant [13 x i8] c"Store\09 %lld\0A\00", align 1
@.str31 = private unnamed_addr constant [21 x i8] c"GetElementPtr\09 %lld\0A\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"Fence\09 %lld\0A\00", align 1
@.str33 = private unnamed_addr constant [21 x i8] c"AtomicCmpXchg\09 %lld\0A\00", align 1
@.str34 = private unnamed_addr constant [17 x i8] c"AtomicRMW\09 %lld\0A\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"Trunc\09 %lld\0A\00", align 1
@.str36 = private unnamed_addr constant [12 x i8] c"ZExt\09 %lld\0A\00", align 1
@.str37 = private unnamed_addr constant [12 x i8] c"SExt\09 %lld\0A\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"FPToUI\09 %lld\0A\00", align 1
@.str39 = private unnamed_addr constant [14 x i8] c"FPToSI\09 %lld\0A\00", align 1
@.str40 = private unnamed_addr constant [14 x i8] c"UIToFP\09 %lld\0A\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"SIToFP\09 %lld\0A\00", align 1
@.str42 = private unnamed_addr constant [15 x i8] c"FPTrunc\09 %lld\0A\00", align 1
@.str43 = private unnamed_addr constant [13 x i8] c"FPExt\09 %lld\0A\00", align 1
@.str44 = private unnamed_addr constant [16 x i8] c"PtrToInt\09 %lld\0A\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"IntToPtr\09 %lld\0A\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"BitCast\09 %lld\0A\00", align 1
@.str47 = private unnamed_addr constant [21 x i8] c"AddrSpaceCast\09 %lld\0A\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"ICmp\09 %lld\0A\00", align 1
@.str49 = private unnamed_addr constant [12 x i8] c"FCmp\09 %lld\0A\00", align 1
@.str50 = private unnamed_addr constant [12 x i8] c"Call\09 %lld\0A\00", align 1
@.str51 = private unnamed_addr constant [14 x i8] c"Select\09 %lld\0A\00", align 1
@.str52 = private unnamed_addr constant [15 x i8] c"UserOp1\09 %lld\0A\00", align 1
@.str53 = private unnamed_addr constant [15 x i8] c"UserOp2\09 %lld\0A\00", align 1
@.str54 = private unnamed_addr constant [13 x i8] c"VAArg\09 %lld\0A\00", align 1
@.str55 = private unnamed_addr constant [22 x i8] c"ExtractElement\09 %lld\0A\00", align 1
@.str56 = private unnamed_addr constant [21 x i8] c"InsertElement\09 %lld\0A\00", align 1
@.str57 = private unnamed_addr constant [21 x i8] c"ShuffleVector\09 %lld\0A\00", align 1
@.str58 = private unnamed_addr constant [20 x i8] c"ExtractValue\09 %lld\0A\00", align 1
@.str59 = private unnamed_addr constant [19 x i8] c"InsertValue\09 %lld\0A\00", align 1
@.str60 = private unnamed_addr constant [18 x i8] c"LandingPad\09 %lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @countBB() #0 {
  %1 = load i64* @total_BB, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_BB, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countInstruction() #0 {
  %1 = load i64* @total_Instruction, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Instruction, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countCmp() #0 {
  %1 = load i64* @total_cmp, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countRet() #0 {
  %1 = load i64* @total_Ret, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Ret, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countBr() #0 {
  %1 = load i64* @total_Br, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Br, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSwitch() #0 {
  %1 = load i64* @total_Switch, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Switch, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countIndirectBr() #0 {
  %1 = load i64* @total_IndirectBr, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_IndirectBr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countInvoke() #0 {
  %1 = load i64* @total_Invoke, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Invoke, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countResume() #0 {
  %1 = load i64* @total_Resume, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Resume, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countUnreachable() #0 {
  %1 = load i64* @total_Unreachable, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Unreachable, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAdd() #0 {
  %1 = load i64* @total_Add, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Add, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFAdd() #0 {
  %1 = load i64* @total_FAdd, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FAdd, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSub() #0 {
  %1 = load i64* @total_Sub, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Sub, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFSub() #0 {
  %1 = load i64* @total_FSub, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FSub, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countMul() #0 {
  %1 = load i64* @total_Mul, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Mul, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFMul() #0 {
  %1 = load i64* @total_FMul, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FMul, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countUDiv() #0 {
  %1 = load i64* @total_UDiv, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_UDiv, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSDiv() #0 {
  %1 = load i64* @total_SDiv, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_SDiv, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFDiv() #0 {
  %1 = load i64* @total_FDiv, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FDiv, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countURem() #0 {
  %1 = load i64* @total_URem, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_URem, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSRem() #0 {
  %1 = load i64* @total_SRem, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_SRem, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFRem() #0 {
  %1 = load i64* @total_FRem, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FRem, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countShl() #0 {
  %1 = load i64* @total_Shl, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Shl, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countLShr() #0 {
  %1 = load i64* @total_LShr, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_LShr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAShr() #0 {
  %1 = load i64* @total_AShr, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_AShr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAnd() #0 {
  %1 = load i64* @total_And, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_And, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countOr() #0 {
  %1 = load i64* @total_Or, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Or, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countXor() #0 {
  %1 = load i64* @total_Xor, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Xor, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAlloca() #0 {
  %1 = load i64* @total_Alloca, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Alloca, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countLoad() #0 {
  %1 = load i64* @total_Load, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Load, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countStore() #0 {
  %1 = load i64* @total_Store, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Store, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countGetElementPtr() #0 {
  %1 = load i64* @total_GetElementPtr, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_GetElementPtr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFence() #0 {
  %1 = load i64* @total_Fence, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Fence, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAtomicCmpXchg() #0 {
  %1 = load i64* @total_AtomicCmpXchg, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_AtomicCmpXchg, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAtomicRMW() #0 {
  %1 = load i64* @total_AtomicRMW, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_AtomicRMW, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countTrunc() #0 {
  %1 = load i64* @total_Trunc, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Trunc, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countZExt() #0 {
  %1 = load i64* @total_SExt, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_SExt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSExt() #0 {
  %1 = load i64* @total_SExt, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_SExt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFPToUI() #0 {
  %1 = load i64* @total_FPToUI, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FPToUI, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFPToSI() #0 {
  %1 = load i64* @total_FPToSI, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FPToSI, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countUIToFP() #0 {
  %1 = load i64* @total_UIToFP, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_UIToFP, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSIToFP() #0 {
  %1 = load i64* @total_SIToFP, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_SIToFP, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFPTrunc() #0 {
  %1 = load i64* @total_FPTrunc, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FPTrunc, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFPExt() #0 {
  %1 = load i64* @total_FPExt, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FPExt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countPtrToInt() #0 {
  %1 = load i64* @total_PtrToInt, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_PtrToInt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countIntToPtr() #0 {
  %1 = load i64* @total_IntToPtr, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_IntToPtr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countBitCast() #0 {
  %1 = load i64* @total_BitCast, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_BitCast, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countAddrSpaceCast() #0 {
  %1 = load i64* @total_AddrSpaceCast, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_AddrSpaceCast, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countICmp() #0 {
  %1 = load i64* @total_ICmp, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_ICmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countFCmp() #0 {
  %1 = load i64* @total_FCmp, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_FCmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countCall() #0 {
  %1 = load i64* @total_Call, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Call, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countSelect() #0 {
  %1 = load i64* @total_Select, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_Select, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countUserOp1() #0 {
  %1 = load i64* @total_UserOp1, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_UserOp1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countUserOp2() #0 {
  %1 = load i64* @total_UserOp2, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_UserOp2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countVAArg() #0 {
  %1 = load i64* @total_VAArg, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_VAArg, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countExtractElement() #0 {
  %1 = load i64* @total_ExtractElement, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_ExtractElement, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countInsertElement() #0 {
  %1 = load i64* @total_InsertElement, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_InsertElement, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countShuffleVector() #0 {
  %1 = load i64* @total_ShuffleVector, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_ShuffleVector, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countExtractValueInst() #0 {
  %1 = load i64* @total_ExtractValueInst, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_ExtractValueInst, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countInsertValueInst() #0 {
  %1 = load i64* @total_InsertValueInst, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_InsertValueInst, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @countLandingPadInst() #0 {
  %1 = load i64* @total_LandingPadInst, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @total_LandingPadInst, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @printer() #0 {
  %1 = load i64* @total_BB, align 8
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i64 %1)
  %3 = load i64* @total_Instruction, align 8
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i64 %3)
  %5 = load i64* @total_cmp, align 8
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i64 %5)
  %7 = load i64* @total_Ret, align 8
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i64 %7)
  %9 = load i64* @total_Br, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i64 %9)
  %11 = load i64* @total_Switch, align 8
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), i64 %11)
  %13 = load i64* @total_IndirectBr, align 8
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i64 %13)
  %15 = load i64* @total_Invoke, align 8
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i64 %15)
  %17 = load i64* @total_Resume, align 8
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0), i64 %17)
  %19 = load i64* @total_Unreachable, align 8
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str9, i32 0, i32 0), i64 %19)
  %21 = load i64* @total_Add, align 8
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i64 %21)
  %23 = load i64* @total_FAdd, align 8
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i64 %23)
  %25 = load i64* @total_Sub, align 8
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i64 %25)
  %27 = load i64* @total_FSub, align 8
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i64 %27)
  %29 = load i64* @total_Mul, align 8
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str14, i32 0, i32 0), i64 %29)
  %31 = load i64* @total_FMul, align 8
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str15, i32 0, i32 0), i64 %31)
  %33 = load i64* @total_UDiv, align 8
  %34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str16, i32 0, i32 0), i64 %33)
  %35 = load i64* @total_SDiv, align 8
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str17, i32 0, i32 0), i64 %35)
  %37 = load i64* @total_FDiv, align 8
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0), i64 %37)
  %39 = load i64* @total_URem, align 8
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str19, i32 0, i32 0), i64 %39)
  %41 = load i64* @total_SRem, align 8
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str20, i32 0, i32 0), i64 %41)
  %43 = load i64* @total_FRem, align 8
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str21, i32 0, i32 0), i64 %43)
  %45 = load i64* @total_Shl, align 8
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0), i64 %45)
  %47 = load i64* @total_LShr, align 8
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str23, i32 0, i32 0), i64 %47)
  %49 = load i64* @total_AShr, align 8
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str24, i32 0, i32 0), i64 %49)
  %51 = load i64* @total_And, align 8
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i64 %51)
  %53 = load i64* @total_Or, align 8
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0), i64 %53)
  %55 = load i64* @total_Xor, align 8
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str27, i32 0, i32 0), i64 %55)
  %57 = load i64* @total_Alloca, align 8
  %58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str28, i32 0, i32 0), i64 %57)
  %59 = load i64* @total_Load, align 8
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0), i64 %59)
  %61 = load i64* @total_Store, align 8
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str30, i32 0, i32 0), i64 %61)
  %63 = load i64* @total_GetElementPtr, align 8
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str31, i32 0, i32 0), i64 %63)
  %65 = load i64* @total_Fence, align 8
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str32, i32 0, i32 0), i64 %65)
  %67 = load i64* @total_AtomicCmpXchg, align 8
  %68 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str33, i32 0, i32 0), i64 %67)
  %69 = load i64* @total_AtomicRMW, align 8
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str34, i32 0, i32 0), i64 %69)
  %71 = load i64* @total_Trunc, align 8
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0), i64 %71)
  %73 = load i64* @total_ZExt, align 8
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str36, i32 0, i32 0), i64 %73)
  %75 = load i64* @total_SExt, align 8
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str37, i32 0, i32 0), i64 %75)
  %77 = load i64* @total_FPToUI, align 8
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str38, i32 0, i32 0), i64 %77)
  %79 = load i64* @total_FPToSI, align 8
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str39, i32 0, i32 0), i64 %79)
  %81 = load i64* @total_UIToFP, align 8
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str40, i32 0, i32 0), i64 %81)
  %83 = load i64* @total_SIToFP, align 8
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str41, i32 0, i32 0), i64 %83)
  %85 = load i64* @total_FPTrunc, align 8
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str42, i32 0, i32 0), i64 %85)
  %87 = load i64* @total_FPExt, align 8
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str43, i32 0, i32 0), i64 %87)
  %89 = load i64* @total_PtrToInt, align 8
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str44, i32 0, i32 0), i64 %89)
  %91 = load i64* @total_IntToPtr, align 8
  %92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str45, i32 0, i32 0), i64 %91)
  %93 = load i64* @total_BitCast, align 8
  %94 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str46, i32 0, i32 0), i64 %93)
  %95 = load i64* @total_AddrSpaceCast, align 8
  %96 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str47, i32 0, i32 0), i64 %95)
  %97 = load i64* @total_ICmp, align 8
  %98 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str48, i32 0, i32 0), i64 %97)
  %99 = load i64* @total_FCmp, align 8
  %100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str49, i32 0, i32 0), i64 %99)
  %101 = load i64* @total_Call, align 8
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str50, i32 0, i32 0), i64 %101)
  %103 = load i64* @total_Select, align 8
  %104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str51, i32 0, i32 0), i64 %103)
  %105 = load i64* @total_UserOp1, align 8
  %106 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str52, i32 0, i32 0), i64 %105)
  %107 = load i64* @total_UserOp2, align 8
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str53, i32 0, i32 0), i64 %107)
  %109 = load i64* @total_VAArg, align 8
  %110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str54, i32 0, i32 0), i64 %109)
  %111 = load i64* @total_ExtractElement, align 8
  %112 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str55, i32 0, i32 0), i64 %111)
  %113 = load i64* @total_InsertElement, align 8
  %114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str56, i32 0, i32 0), i64 %113)
  %115 = load i64* @total_ShuffleVector, align 8
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str57, i32 0, i32 0), i64 %115)
  %117 = load i64* @total_ExtractValueInst, align 8
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str58, i32 0, i32 0), i64 %117)
  %119 = load i64* @total_InsertValueInst, align 8
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str59, i32 0, i32 0), i64 %119)
  %121 = load i64* @total_LandingPadInst, align 8
  %122 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str60, i32 0, i32 0), i64 %121)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
