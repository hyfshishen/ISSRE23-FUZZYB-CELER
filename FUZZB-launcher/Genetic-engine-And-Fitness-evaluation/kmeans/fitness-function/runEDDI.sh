#!/bin/sh
CUR_DIR="$(pwd)"

cd $CUR_DIR

if [ "$#" -ne 3 ]; then
  echo "You should provide three input args for kmeans and llvm so file"
  exit 1
fi

echo "\n\n===== Input: $1 $2 $3=====\n"
./datagen $1 $2
rm -rf testout testout-pro instout instout-pro
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout --append ./kmeans -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout --append ./kmeans -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout --append ./kmeans -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout --append ./kmeans -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout --append ./kmeans -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout --append ./kmeans -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout-pro --append ./full-protected -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout-pro --append ./full-protected -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout-pro --append ./full-protected -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout-pro --append ./full-protected -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout-pro --append ./full-protected -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
perf stat -e cpu-cycles -e L1-dcache-loads -e L1-dcache-stores -e l2_rqsts.code_rd_miss -e branch-loads -e dTLB-loads -e instructions -o testout-pro --append ./full-protected -i $1_$2.txt -k $3 > stdout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
./InstructionType  -i $1_$2.txt -k $3 > instout
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
./full-protected-InstructionType -i $1_$2.txt -k $3 > instout-pro
sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"
python3 GetFitnessscore.py
rm $1_$2.txt stdout output.txt
echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0