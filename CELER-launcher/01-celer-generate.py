import os,sys

appName = sys.argv[1]

os.chdir(appName)
cmd1 = "opt -load ./SelectiveInstructionDuplication.so ./" + appName + "-llfi_index.ll -bishe_insert -select_set_file=inst_list.txt -o " + appName + "-originalEDDI.ll"
os.system(cmd1)
cmd2 = "llvm-link external.ll " + appName + "-originalEDDI.ll -o " + appName + "-originalEDDI.ll"
os.system(cmd2)

cmd3 = "opt -load ./celer.so ./" + appName + "-llfi_index.ll -bishe_insert -select_set_file=inst_list.txt -o " + appName + "-celer.ll"
os.system(cmd3)
cmd4 = "llvm-link external.ll " + appName + "-celer.ll -o " + appName + "-celer.ll"
os.system(cmd4)
