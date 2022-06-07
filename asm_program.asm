/* asm_program.asm
Justin Cao
CSCI 3130
Open Lab 1
09/09
*/
.global main

.text
main:
	call c_function 	/* call to c function */
	ret			/* return to top */