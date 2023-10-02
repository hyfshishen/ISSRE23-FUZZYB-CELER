#This script means to generate all the instruction type overhead information.

import sys,os,subprocess

i = str(sys.argv[1])
print(str(i))
os.system("./InstructionType " + i )
os.system("./full-protected-InstructionType " + i)