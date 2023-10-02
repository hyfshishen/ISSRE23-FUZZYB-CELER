import os, sys, subprocess, random
#use space as indent

os.system("rm input_list.txt")
random.seed(10)

ranges = [[1, 128], [1, 128], [1, 128]]

inputArg1 = 0
inputArg2 = 0
inputArg3 = 0

i = 0

for i in range (50):
    inputArg1 = random.randint(ranges[0][0], ranges[0][1])
    inputArg2 = random.randint(ranges[1][0], ranges[1][1])
    inputArg3 = random.randint(ranges[2][0], ranges[2][1])
	
    inputArgStr = "%i %i %i"%(inputArg1, inputArg2, inputArg3)

    with open("input_list.txt", "a") as ff:
        ff.write("%s\n"%(inputArgStr))
