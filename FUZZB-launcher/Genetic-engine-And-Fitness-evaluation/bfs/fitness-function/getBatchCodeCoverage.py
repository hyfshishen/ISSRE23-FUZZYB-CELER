import os, sys, csv

startLine = 0
endLine= 30


csvfile = open('batch_code_coverage.csv', 'w' )
csvwriter = csv.writer(csvfile)



inputList = open('input_list.txt', 'r').readlines()
lineCounter = 0
for eachInput in inputList:
	if eachInput != "\n" and lineCounter >= startLine  and lineCounter < endLine:
		eachInput = str(eachInput.replace("\n", ""))
		os.system("python getSum.py \"" + eachInput + "\"")
		
		with open("code-coverage.txt", "r") as f:
			line = f.readline()
			coverage = float(line.strip())
			csvwriter.writerow([eachInput, coverage])
csvfile.close()

			
		
