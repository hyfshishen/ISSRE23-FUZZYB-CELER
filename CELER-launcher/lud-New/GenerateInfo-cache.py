import os,sys,subprocess

with open('Total-Time.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        overhead = float(float(float(file[(i*2)+1])-float(file[i*2]))/float(file[i*2]))
        with open('time.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')
#Get branch overhead
              
with open('Total-BranchCache.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        overhead = float(float(float(file[(i*2)+1])-float(file[i*2]))/float(file[i*2]))
        with open('Branch.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')
#Get L1 cache overhead

with open('Total-L1Cache.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        overhead = float(float(float(file[(i*2)+1])-float(file[i*2]))/float(file[i*2]))
        with open('L1.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')
#dTLB overhead

with open('Total-dTLBCache.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        overhead = float(float(float(file[(i*2)+1])-float(file[i*2]))/float(file[i*2]))
        with open('dTLB.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')        
with open('Total.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in file :
        if "BB" in i :
            a = i.split('	 ')[1]
            with open('Total-BB.txt','a') as ff :
                ff.write(a)
with open('Total-BB.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        overhead = float(float(float(file[(i*2)+1])-float(file[i*2]))/float(file[i*2]))
        with open('BB.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')
with open('Total.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in file :
        if "Instruction" in i :
            a = i.split('	 ')[1]
            with open('Total-Inst.txt','a') as ff :
                ff.write(a)
with open('Total-Inst.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        overhead = float(float(float(file[(i*2)+1])-float(file[i*2]))/float(file[i*2]))
        with open('Inst.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')
with open('Total.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in file :
        if "F" in i :
            a = i.split('	 ')[1]
            with open('Total-Float.txt','a') as ff :
                ff.write(a)
with open('Total-Float.txt','r') as fr:
    file = fr.readlines()
    i = 0
    for i in range(50):
        a = int(file[(i*12)+6]) + int(file[(i*12)+7]) + int(file[(i*12)+8]) + int(file[(i*12)+9]) + int(file[(i*12)+10]) + int(file[(i*12)+11])
        b = int(file[(i*12)]) + int(file[(i*12)+1]) + int(file[(i*12)+2]) + int(file[(i*12)+3]) + int(file[(i*12)+4]) + int(file[(i*12)+5])
        overhead = float((a-b)/b)
        with open('Float.txt','a') as ff:
                ff.write(str(overhead))
                ff.write('\n')
