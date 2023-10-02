import sys, os
import subprocess
import argparse
import csv
import re
import os, sys
import numpy as np
from scipy.stats import pearsonr

with open('input_list.txt','r') as fr:
    input = fr.readlines()
i = 0
timestack = [0 for i in range(10)]
cyclestack = [0 for i in range(10)]
L1dataStack = [0 for i in range(10)]
L1storestack = [0 for i in range(10)]
L2stack = [0 for i in range(10)]
branchstack = [0 for i in range(10)]
dtlbstack = [0 for i in range(10)]
inststack = [0 for i in range(10)]


for i in range (10):
	inputArgs = input[i]
	print(inputArgs)
	input_array = inputArgs.split(" ")
# on this script we generate all the cpu cycle and use cpu cyecle's overhead as the fitness function.
	print(input_array)
	exec_list = ["./runInst.sh"]
	for inputArg in input_array:
		exec_list.append(str(inputArg))
		
	ret_code = subprocess.call(exec_list)
# get the result of Result/sum_output.txt
# form is output_file.write("%i %i %i: %.4f\n"%(inputArg1, inputArg2, inputArg3,total_sdc*1000))
	if ret_code != 0 :
		print("Error:: something went wrong!")
		exit(1)

	k = 0 
	with open('testout','r') as fr:
		file = fr.readlines()
		t = 0
		inst = 0
		cycle = 0
		L1data = 0
		L1dstore = 0
		L2codemiss = 0
		branch = 0
		dtlb = 0
		for k in file:
			k = k.replace(',','')
			if "time" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				t = float(a + t)

			if "instructions" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				inst = float(a + inst)

			if "cpu-cycles" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				cycle = float(cycle + a)

			if "L1-dcache-loads" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				L1data = float(L1data + a)

			if "L1-dcache-stores" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				L1dstore = float(L1dstore + a)

			if "l2_rqsts.code_rd_miss" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				L2codemiss = float(L2codemiss + a)

			if "branch-loads" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				branch = float(branch + a)

			if "dTLB-loads" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				dtlb = float(dtlb + a)
							
	with open('testout-pro','r') as fr:
		file = fr.readlines()
		p = 0
		inst2 = 0
		cycle2 = 0
		L1data2 = 0
		L1dstore2 = 0
		L2codemiss2 = 0
		branch2 = 0
		dtlb2 = 0
		for k in file:
			k = k.replace(',','')
			if "time" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				p = float(a + p)

			if "instructions" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				inst2 = float(a + inst2)

			if "cpu-cycles" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				cycle2 = float(cycle2 + a)

			if "L1-dcache-loads" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				L1data2 = float(L1data2 + a)

			if "L1-dcache-stores" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				L1dstore2 = float(L1dstore2 + a)
	
			if "l2_rqsts.code_rd_miss" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				L2codemiss2 = float(L2codemiss2 + a)

			if "branch-loads" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				branch2 = float(branch2 + a)

			if "dTLB-loads" in k:
				a = float(re.findall(r"\d+\.?\d*",k)[0])
				dtlb2 = float(dtlb2 + a)

	a = int(inst/6)
	b = int(inst2/6)
	total_inst = float((b-a)/a)*10000
	inststack[i] = float(total_inst)

	a = float(t/6)
	b = float(p/6)
	total_time = float((b-a)/a)*10000
	timestack[i] = float(total_time)
	#print(timestack[i])

	a = float(cycle/6)
	b = float(cycle2/6)
	total_cycle = float((b-a)/a)*10000
	print(total_cycle)
	cyclestack[i] = float(total_cycle)

	a = float(L1data/6)
	b = float(L1data2/6)
	total_L1data = float((b-a)/a)*10000
	L1dataStack[i] = float(total_L1data)

	a = float(L1dstore/6)
	b = float(L1dstore2/6)
	total_L1dstore = float((b-a)/a)*10000
	L1storestack[i] = float(total_L1dstore)

	a = float(L2codemiss/6)
	b = float(L2codemiss2/6)
	total_L2 = float((b-a)/a)*10000
	L2stack[i] = float(total_L2)

	a = float(branch/6)
	b = float(branch2/6)
	total_branch = float((b-a)/a)*10000
	branchstack[i] = float(total_branch)	

	a = float(dtlb/6)
	b = float(dtlb2/6)
	total_dtlb = float((b-a)/a)*10000
	dtlbstack[i] = float(total_dtlb)

	os.system("rm -rf testout testout-pro instout instout-pro")


timeco = pearsonr(timestack,cyclestack)
L1co = pearsonr(timestack,L1dataStack)
L1storeco = pearsonr(timestack,L1storestack)
L2co = pearsonr(timestack,L2stack)
branchco = pearsonr(timestack,branchstack)
dtlbco = pearsonr(timestack,dtlbstack)
instco = pearsonr(timestack,inststack)
os.system('rm -rf fitness-correlation')
with open ('fitness-correlation','w') as fr:
	fr.write(str(timeco[0]) + " " + str(timeco[1]) + "\n")
	fr.write(str(L1co[0]) + " " + str(L1co[1])+ "\n")
	fr.write(str(L1storeco[0]) + " " + str(L1storeco[1])+ "\n")
	fr.write(str(L2co[0]) + " " + str(L2co[1])+ "\n")
	fr.write(str(branchco[0]) + " " + str(branchco[1])+ "\n")
	fr.write(str(dtlbco[0]) + " " + str(dtlbco[1])+ "\n")
	fr.write(str(instco[0]) + " " + str(instco[1])+ "\n")