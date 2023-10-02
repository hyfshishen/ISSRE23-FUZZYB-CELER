import os, subprocess, random
from datetime import datetime
#use space as indent

os.system("rm input_list.txt")
random.seed(10)

ranges = [[50, 128], [50, 128], [50, 128]]

inputArg1 = 0
inputArg2 = 0
inputArg3 = 0

i = 0
a = 0
MaxOverhead = 0
for i in range (500):
    inputArg1 = random.randint(ranges[0][0], ranges[0][1])
    inputArg2 = random.randint(ranges[1][0], ranges[1][1])
    inputArg3 = random.randint(ranges[2][0], ranges[2][1])
	
    inputArgStr = "%i %i %i"%(inputArg1, inputArg2, inputArg3)

    with open("input_list.txt", "a") as ff:
        ff.write("%s\n"%(inputArgStr))

with open('input_list.txt','r') as fr:
    input = fr.readlines()

for i in range (500):
    inputArgs = input[i]
    print(inputArgs)
    input_array = inputArgs.split(" ")
    # on this script we generate all the cpu cycle and use cpu cyecle's overhead as the fitness function.
    print(input_array)
    exec_list = ["./runInst.sh"]
    for inputArg in input_array:
        exec_list.append(str(inputArg))

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    with open('random-log.txt','a') as logF:
        logF.write("**** [TIME-start] **** : " + str(dt_string) + "\n" )

    ret_code = subprocess.call(exec_list)
    # get the result of Result/sum_output.txt
    # form is output_file.write("%i %i %i: %.4f\n"%(inputArg1, inputArg2, inputArg3,total_sdc*1000))
    if ret_code != 0 :
        print("Error:: something went wrong!")
        exit(1)
    with open('TimeOverhead.txt','r') as fr:
        a = float(fr.readlines()[0])
        if a > MaxOverhead :
            MaxOverhead = a
    with open('random-log.txt','a') as logF:
        logF.write("Evaluating Input : " + str(inputArgs) + "\n" )
        logF.write("--> This score : " + str(a) + "\n" )
        logF.write("--> Best score at random : " + str(MaxOverhead) + "\n" )
        
        now = datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
        logF.write("**** [TIME-end] **** : " + str(dt_string) + "\n" )
    os.system("rm -rf TimeOverhead.txt testout testout-pro")

        


