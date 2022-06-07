/*	c_function.c
	c function to be called from asm to output message
Justin Cao
CSCI 3130
Open Lab 1
09/09
*/
#include <stdio.h>

void c_function(){

	const char *messageone = "An old silent pond...\0";
	const char *messagetwo = "A frog jumps into the pond,\0";
	const char *messagethree = "splash! Silence again.\0";
	const char *messagefour = "Basho Matsuo";
	puts(messageone);
	puts(messagetwo);
	puts(messagethree);
	puts(messagefour);

	return;
}
