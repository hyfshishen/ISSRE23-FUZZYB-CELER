#include <stdio.h>

void countBB();
void countInstruction();
void countCmp();
void printer();
long long total_BB = 0;
long long total_Instruction = 0;
long long total_cmp = 0;

void countBB()
{
	total_BB++;
}

void countInstruction()
{
	total_Instruction++;
}

void countCmp()
{
	total_cmp++;
}

void printer()
{
	printf("BB\tnumber no: %lld\n", total_BB);
	printf("Instruction\tnumber no: %lld\n", total_Instruction);
	printf("Cmp\tnumber no: %lld\n", total_cmp);
}

