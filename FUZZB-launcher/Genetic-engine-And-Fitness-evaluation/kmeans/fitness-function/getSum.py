import os, sys, subprocess

inputArgs = str(sys.argv[1])

input_array = inputArgs.split(" ")

# on this script we generate all the cpu cycle and use cpu cyecle's overhead as the fitness function.
exec_list = ["./runEDDI.sh"]
for inputArg in input_array:
	exec_list.append(str(inputArg))
	
ret_code = subprocess.call(exec_list)

# get the result of Result/sum_output.txt
# form is output_file.write("%i %i %i: %.4f\n"%(inputArg1, inputArg2, inputArg3,total_sdc*1000))
if ret_code != 0 :
	print("Error:: something went wrong!")
	exit(1)
                                        