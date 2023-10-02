import os,sys,subprocess

with open('output-cache','r') as fr:
    file = fr.readlines()
    for i in file:
        if "time" in i:
            a = i.split(' ')[0]
            with open('Total-Time.txt','a') as ff:
                ff.write(a)
                ff.write('\n')

with open('output-cache','r') as fr:
    file = fr.readlines()
    for i in file:
        if "branches" in i:
            if "branch-misses" not in i:
                a = i.split('      ')[0]
                with open('Total-BranchCache.txt','a') as ff:
                    ff.write(a)
                    ff.write('\n')

with open('output-cache','r') as fr:
    file = fr.readlines()
    for i in file:
        if "L1-dcache-load-misses" in i:
            a = i.split('      ')[0]
            with open('Total-L1Cache.txt','a') as ff:
                ff.write(a)
                ff.write('\n')
with open('output-cache','r') as fr:
    file = fr.readlines()
    for i in file:
        if "dTLB-loads" in i:
            a = i.split('      ')[0]
            with open('Total-dTLBCache.txt','a') as ff:
                ff.write(a)
                ff.write('\n')