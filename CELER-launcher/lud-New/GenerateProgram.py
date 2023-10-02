#This script means to generate all the instruction type overhead information.

import sys,os,subprocess

benchmark = str(sys.argv[1])

#Generate EDDI version

os.system("opt -load ./SelectiveInstructionDuplication.so ./" + benchmark + "-llfi_index.ll -bishe_insert -select_set_file=inst_list.txt -o full-protected.ll")

os.system("llvm-link full-protected.ll EDDI.ll -o full-protected.ll")

#BasicBlock Number, Floating point, Dynamic instruction number

os.system("opt -load ./CountBBAndInstruction.so ./" + benchmark + ".ll -instruction_level -o InstructionType.ll")

os.system("opt -load ./CountBBAndInstruction.so ./full-protected.ll -instruction_level -o full-protected-InstructionType.ll")

os.system("llvm-link InstructionType.ll Instruction.ll -o InstructionType.ll")

os.system("llvm-link full-protected-InstructionType.ll Instruction.ll -o full-protected-InstructionType.ll")

os.system("clang++ " + benchmark + ".ll -o " + benchmark)

os.system("clang++ full-protected.ll -o full-protected")

os.system("clang++ InstructionType.ll -o InstructionType")

os.system("clang++ full-protected-InstructionType.ll -o full-protected-InstructionType")
