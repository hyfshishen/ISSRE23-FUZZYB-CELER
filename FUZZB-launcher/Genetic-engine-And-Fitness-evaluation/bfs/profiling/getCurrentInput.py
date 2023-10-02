import sys, os


"""
this file is for passing input one by one to analysis_pass from inputGenList.txt
"""
inputArg1 = int(sys.argv[1])

input_file = open('Input/cur_input.txt','w')
input_file.write("%i\n"%(inputArg1))
input_file.close()
