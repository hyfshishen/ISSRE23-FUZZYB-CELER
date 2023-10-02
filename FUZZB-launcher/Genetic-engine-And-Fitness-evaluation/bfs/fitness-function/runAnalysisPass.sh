#!/bin/sh
CUR_DIR="$(pwd)"

cd $CUR_DIR
mkdir Result

if [ "$#" -ne 2 ]; then
  echo "You should provide two input args for pathfinder and llvm so file"
  exit 1
fi

echo "\n\n===== Input: $1 =====\n"

SO_FILE=$2

REL_PATH="../profiling"
cd $REL_PATH
mkdir exec-count


### profile phase
python3 map_index_bb.py -fi Input/bfs-llfi_index.ll
python3 getCurrentInput.py $1
./graphgen $1
#sh ./do_profiling.sh $1 $2
BIN_PATH=~/llvm-tool/llvm-3.4/Release/bin
$BIN_PATH/opt -S -load $SO_FILE -exec_counter Input/bfs-llfi_index.ll -o bfs_profile.ll
$BIN_PATH/clang -emit-llvm -S analysis_util.c -o analysis_util.ll
$BIN_PATH/llvm-link -S -o final_program.ll bfs_profile.ll analysis_util.ll 
$BIN_PATH/lli final_program.ll graph$1.txt 
rm bfs_profile.ll analysis_util.ll final_program.ll 
cp -r exec-count ../sum/
cp exec-count/$1.txt $CUR_DIR
rm -rf exec-count
rm graph$1.txt
### sum phase
cd ../sum
sh ./run.sh . exec-count
cp Result/sum_output.txt $CUR_DIR/Result/
rm -rf exec-count

### back to current dir and print result
cd $CUR_DIR
python3 Utils/getCodeCoverage.py $1.txt
rm $1.txt
#echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0


