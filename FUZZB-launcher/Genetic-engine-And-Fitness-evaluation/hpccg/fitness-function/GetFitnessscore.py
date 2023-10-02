import sys, os
import subprocess
import argparse
import csv
import re
import os, sys
import numpy as np

cor = [0 for i in range(7)]

i = 0

with open('fitness-correlation','r') as fr:
    f = fr.readlines()
for i in range(7):
    cor[i] = float(f[i].split(' ')[0])
print(cor)
cor -= np.max(cor)
result = np.exp(cor)/np.sum(np.exp(cor))
print(result)

#with open('instout','r') as fr:
#    file = fr.readlines()
#   BB = 0
#    Ele = 0
#    for k in file:
#        if "BB" in k:
#            a = int(re.findall(r"\d+\.?\d*",k)[0])
#            BB = BB + a
#        if "GetElementPtr" in k:
#            a = int(re.findall(r"\d+\.?\d*",k)[0])
#            Ele = Ele + a
#with open('instout-pro','r') as fr:
#    file = fr.readlines()
#    BB2 = 0
#    Ele2 = 0
#    for k in file:
#        if "BB" in k:
#            a = int(re.findall(r"\d+\.?\d*",k)[0])
#            BB2 = BB2 + a
#        if "GetElementPtr" in k:
#            a = int(re.findall(r"\d+\.?\d*",k)[0])
#            Ele2 = Ele2 + a
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


a = int(inst/3)
b = int(inst2/3)
#total_BB = float((BB2-BB)/(b-a))*10000
#total_Ele = float((Ele2-Ele)/(b-a))*10000
total_inst = float((b-a)/a)*10000

a = float(t/3)
b = float(p/3)
total_time = float((b-a)/a)*10000

a = float(cycle/3)
b = float(cycle2/3)
total_cycle = float((b-a)/a)*10000

a = float(L1data/3)
b = float(L1data2/3)
total_L1data = float((b-a)/a)*10000

a = float(L1dstore/3)
b = float(L1dstore2/3)
total_L1dstore = float((b-a)/a)*10000

a = float(L2codemiss/3)
b = float(L2codemiss2/3)
total_L2 = float((b-a)/a)*10000

a = float(branch/3)
b = float(branch2/3)
total_branch = float((b-a)/a)*10000

a = float(dtlb/3)
b = float(dtlb2/3)
total_dtlb = float((b-a)/a)*10000

os.system("rm -rf testout testout-pro instout instout-pro")
total_fitness = total_time + result[0]*total_cycle + result[1]*total_L1data + result[2]*total_L1dstore + result[3]*total_L2 + result[4]*total_branch + result[5]*total_dtlb + result[6]*total_inst
with open('fitness-score.txt','w') as fr:
    fr.write(str(total_fitness))
print(total_fitness)