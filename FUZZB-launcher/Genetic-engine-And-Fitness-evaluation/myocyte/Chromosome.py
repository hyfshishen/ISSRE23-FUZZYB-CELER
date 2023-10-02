import math
import random
import os
from datetime import datetime


memY = {}

class Chromosome:
    def __init__(self, bounds,pop_size,popsizenow):
        self.noOfArgs = len(bounds)
        self.x = []
        self.inputString = ""
        if popsizenow < (pop_size/3):
                for i in range(0, self.noOfArgs):
                        dinum = (bounds[i][1] - bounds[i][0])/3
                        self.x.append(random.randint(bounds[i][0], int(bounds[i][0]+dinum)))
                        if i == 0:
                                self.inputString = self.inputString + str(self.x[i])
                        else:
                                self.inputString = self.inputString + " " + str(self.x[i])
        else:
                if popsizenow < (pop_size/3)*2:
                        for i in range(0, self.noOfArgs):
                                dinum = (bounds[i][1] - bounds[i][0])/3
                                self.x.append(random.randint(int(bounds[i][0]+dinum), int(bounds[i][0]+2*dinum)))
                                if i == 0:
                                        self.inputString = self.inputString + str(self.x[i])
                                else:
                                        self.inputString = self.inputString + " " + str(self.x[i])
                else:
                        for i in range(0, self.noOfArgs):
                                dinum = (bounds[i][1] - bounds[i][0])/3
                                self.x.append(random.randint(int(bounds[i][0]+2*dinum),int(bounds[i][1])))
                                if i == 0:
                                        self.inputString = self.inputString + str(self.x[i])
                                else:
                                        self.inputString = self.inputString + " " + str(self.x[i])  

        self.y = 0
        self.cc = 0

    def func(self):
        global memY

        # Update values
        self.inputString = ""
        for i in range(0, self.noOfArgs):
                if i == 0:
                        self.inputString = self.inputString + str(self.x[i])
                else:
                        self.inputString = self.inputString + " " + str(self.x[i])

        if self.inputString in memY:
                self.y = memY[self.inputString]
        #self.cc = 0
        else:
                os.chdir("./fitness-function/")
                print(" -- Evaluating input: " + self.inputString)
                os.system("python getSum.py \"" + self.inputString + "\"")
                if os.path.exists("fitness-score.txt") == True:
                     rf = open("fitness-score.txt", 'r')
                     fs = float(rf.read().replace("\n", ""))
                     self.y = fs
                     memY[self.inputString] = self.y
                     rf.close()
                if os.path.exists("code-coverage.txt") == True:
                     cf = open("code-coverage.txt", 'r')
                     cc = float(cf.read().replace("\n", ""))
                     self.cc = cc
                     cf.close()
                os.chdir("../")

        logF = open("ga-output.log", 'a')
        logF.write("Evaluating input: " + self.inputString + "; Sum(): " + str(self.y) + "; Code Coverage: " + str(self.cc) + "\n")
     
        now = datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

        logF.write("**** [TIME] **** : " + str(dt_string) + "\n" )
        logF.close()
        logF.close()


if __name__ == '__main__':
    a = [[1, 100], [4, 50]]
    print (" get into the main function****************")
    chromosome = Chromosome(a,9,3)
    chromosome.func()
    for j in range(0, len(chromosome.x)):
        print(chromosome.x[j])
