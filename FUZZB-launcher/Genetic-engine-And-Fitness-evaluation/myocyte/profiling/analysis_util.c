#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
//#include "klee/klee.h"

#define listSize 8000
//extern int rows, cols;
int is_init = 0;
long long exec_counter[listSize];
int basicblock_entry[listSize]; // map: (llfi_index -> bb_id)
long long bb_exec_counter[listSize];
double inst_sdc_score[listSize];
int total_bb_id = 0;
double total_execution_count;
int inputArg1, inputArg2,inputArg3,inputArg4;
long max_llfi_index = 0;


void calculateAndDumpResult()
{
	printf("<<<<<< %s called >>>>>>>>>>\n", __func__);
	FILE *f;
	// FILE *f = fopen("index_counter.txt", "w");

	long i ;
	

	/**** this codeblock calculate how much times a basicblock is executed ***/

	for(i = 1; i <= max_llfi_index; i++){
		bb_exec_counter[i] = 0;
	}
	for (i = 1; i <= max_llfi_index; i++){
		if(exec_counter[i] != 0){
			long llfi_index = i;
			int bb_id = basicblock_entry[llfi_index];
			if(bb_id > 0){
				if(exec_counter[llfi_index] > bb_exec_counter[bb_id] ){
				
					bb_exec_counter[bb_id] = exec_counter[llfi_index];
				}
				
			}

		}
	}


	char file_buffer[70];
        sprintf(file_buffer, "exec-count/%d_%d_%d_%d.txt", inputArg1, inputArg2,inputArg3,inputArg4);
        f = fopen(file_buffer, "w");
	fclose(f);
	f = fopen(file_buffer, "a");
       

	
        for (i = 1; i <= max_llfi_index; i++) {
		long fi_index = i;
		int bb_id = basicblock_entry[fi_index];
	
		if(bb_id > 0){
			fprintf(f,"%ld:%lld\n", fi_index,  bb_exec_counter[bb_id]);
		}
	}
         
       
	fclose(f);	


}


void calculateExecCount(long llfi_index){

	if (is_init == 0){
		
		long i;
		for (i = 0; i < listSize; i++){
			exec_counter[i] = 0;
			basicblock_entry[i] = -1;
			bb_exec_counter[i] = 0;
			inst_sdc_score[i] = 0.0;
		}

		total_bb_id = 0;
		max_llfi_index = 0;

		/**** this file contains llfi_index to basicblock_id mapping ***/
		FILE *f = fopen("Input/fi_index_bb_mapping.txt", "r");
		long llfi_index;
		int bb_id;
		while(fscanf(f, "%ld:%d", &llfi_index, &bb_id) != EOF){
			basicblock_entry[llfi_index] = bb_id;
			if(bb_id > total_bb_id){
				total_bb_id = bb_id;
			}
			if(max_llfi_index < llfi_index) {
				max_llfi_index = llfi_index;
			}
		}
		
		fclose(f);

		
//		double sdc_rate;
//	
//		f = fopen("Input/inst_sdc_list.txt", "r");
//		while(fscanf(f, "%ld:%lf", &llfi_index, &sdc_rate) != EOF){
//			inst_sdc_score[llfi_index] = sdc_rate;
//		}
//		
//		fclose(f);
		
		f = fopen("Input/cur_input.txt", "r");
		
                fscanf(f, "%d %d %d %d", &inputArg1, &inputArg2,&inputArg3,&inputArg4);

                fclose(f);
		printf("inputArg1: %d, inputArg2: %d,inputArg3: %d,inputArg4: %d\n",inputArg1, inputArg2, inputArg3,inputArg4);

		
	

		is_init = 1;
		
	}
	
	
	long long cur_count = exec_counter[llfi_index];
	exec_counter[llfi_index] = cur_count + 1;
	        
	         
}                 
                  
                  
                  
                  
                 
                 
                 
              
