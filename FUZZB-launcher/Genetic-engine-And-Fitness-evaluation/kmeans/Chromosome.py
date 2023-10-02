import math
import random
import os
from datetime import datetime


memY = {}

class Chromosome:
    def __init__(self, bounds):
        self.noOfArgs = len(bounds)
        self.x = []
        self.inputString = ""
        for i in range(0, self.noOfArgs):
                self.x.append(random.randint(bounds[i][0], bounds[i][1]))
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

        else:
                os.chdir("./fitness-function/")
                print(" -- Evaluating input: " + self.inputString)
                os.system("python getSum.py \"" + self.inputString + "\"")
              #  print("=================getinto sum==========================")
                if os.path.exists("fitness-score.txt") == True:
                     rf = open("fitness-score.txt", 'r')
                     fs = float(rf.read().replace("\n", ""))
                     self.y = fs
                     memY[self.inputString] = self.y
                     rf.close()
                os.chdir("../")

        logF = open("ga-output.log", 'a')
        logF.write("Evaluating input: " + self.inputString + "; Sum(): " + str(self.y) + "; \n")
     
        now = datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

        logF.write("**** [TIME] **** : " + str(dt_string) + "\n" )
        logF.close()
        logF.close()
       # print("============================================")

if __name__ == '__main__':
    a = [[1, 100], [4, 50]]
    chromosome = Chromosome(a)
    chromosome.func()
    for j in range(0, len(chromosome.x)):
        print(chromosome.x[j])
