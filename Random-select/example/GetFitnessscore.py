import sys, os
import subprocess
import argparse
import csv
import re
import os, sys
origin = 0
after = 0
with open('testout','r') as fr:
    file = fr.readlines()
    for i in file:
        if "time" in i :
            a = float(re.findall(r"\d+\.?\d*",i)[0])
            origin = float(a + float(origin))
with open('testout-pro','r') as fr:
    file = fr.readlines()
    for i in file:
        if "time" in i :
            a = float(re.findall(r"\d+\.?\d*",i)[0])
            after = float(a + float(origin)) 
origin = float(origin/3)
after = float(after/3)
total_overhead = float((after-origin)/origin)*10000
with open('TimeOverhead.txt','w') as fr:
    fr.write(str(total_overhead))


