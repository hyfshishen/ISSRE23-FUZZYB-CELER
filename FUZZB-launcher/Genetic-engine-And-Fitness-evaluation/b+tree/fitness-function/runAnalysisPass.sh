#!/bin/sh
CUR_DIR="$(pwd)"

cd $CUR_DIR
mkdir Result

if [ "$#" -ne 5 ]; then
  echo "You should provide five input args: four for b+tree and llvm so file"
  exit 1
fi

echo "\n\n===== Input: $1 $2 $3 $4  =====\n"

SO_FILE=$5
REL_PATH="../profiling"
cd $REL_PATH

mkdir exec-count

### profile phase
python3 map_index_bb.py -fi Input/b+tree-llfi_index.ll
python3 getCurrentInput.py $1 $2 $3 $4

./datagen $1 $2 $3 $4

BIN_PATH=~/llvm-tool/llvm-3.4/Release/bin

$BIN_PATH/opt -S -load $SO_FILE -exec_counter Input/b+tree-llfi_index.ll -o b+tree_profile.ll
$BIN_PATH/clang -emit-llvm -S analysis_util.c -o analysis_util.ll
$BIN_PATH/llvm-link -S -o final_program.ll b+tree_profile.ll analysis_util.ll 
$BIN_PATH/lli final_program.ll file mil.txt command command.txt
rm b+tree_profile.ll analysis_util.ll final_program.ll
cp -r exec-count ../sum/
cp exec-count/$1_$2_$3_$4.txt $CUR_DIR
rm -rf exec-count mil.txt command.txt output.txt

### sum phase
cd ../sum
sh ./run.sh . 
cp Result/sum_output.txt $CUR_DIR/Result/
rm -rf exec-count/$1_$2_$3_$4.txt
rm -rf exec-count

### back to current dir and print result
cd $CUR_DIR
python3 Utils/getCodeCoverage.py $1_$2_$3_$4.txt
rm -rf $1_$2_$3_$4.txt
#echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0


