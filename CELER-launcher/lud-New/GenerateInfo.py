import os,sys,subprocess

with open('output','r') as fr:
    file = fr.readlines()
    for i in file:
        a = i.split('	 ')[0]
	if a == 'BB' or a == 'Instruction' or a == 'FAdd' or a == 'FSub' or a == 'FMul' or a == 'FDiv' or a == 'FRem' or a == 'FCmp' or a == 'Cmp' or a == 'Ret' or a == 'Br' or a == 'Switch' or a == 'IndirectBr' or a == 'Invoke' or a == 'Resume' or a == 'Unreachable' or a == 'Add' or a == 'Sub' or a == 'Mul' or a == 'UDiv' or a == 'SDiv' or a == 'URem' or a == 'SRem' or a == 'Shl' or a == 'LShl' or a == 'AShr' or a == 'And' or a == 'Or' or a == 'Xor' or a == 'Alloca' or a == 'Load' or a == 'Store' or a == 'GetElementPtr' or a == 'Fence' or a == 'Trunc' or a == 'ZExt' or a == 'SExt' or a == 'FPToUI' or a == 'FPToSI' or a == 'UIToFP' or a == 'SIToFP' or a == 'FPTrunc' or a == 'FPExt' or a == 'PtrToInt' or a == 'IntToPtr' or a == 'BitCast' or a == 'ICmp' or a == 'Call' or a == 'Select':
            with open('Total.txt','a') as ff:
                ff.write(i)
