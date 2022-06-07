/* asm_function.asm
Justin Cao
CSCI 3130
Open Lab 1
09/09
*/
.global asm_function

.text
asm_function:
	/* write(1, message, 13) */
	mov     $1, %rax                  /* system call 1 is write */
        mov     $1, %rdi                  /* file handle 1 is stdout */
        mov     $messageone, %rsi         /* address of string to output */
        mov     $22, %rdx                 /* number of bytes */
	syscall		                  /* invoke operating system */
	mov     $1, %rax                  
        mov     $1, %rdi                  
        mov     $messagetwo, %rsi         
        mov     $28, %rdx                 
	syscall		                  
	mov     $1, %rax                  
        mov     $1, %rdi                  
        mov     $messagethree, %rsi        
        mov     $23, %rdx                 
	syscall		                  
	mov     $1, %rax                  
        mov     $1, %rdi                  
        mov     $messagefour, %rsi        
        mov     $13, %rdx                 
	syscall		                  
	ret				  /* return to top */

.data
messageone:	.ascii	"An old silent pond...\n"
messagetwo:	.ascii	"A frog jumps into the pond,\n"
messagethree:	.ascii	"splash! Silence again.\n"
messagefour:	.ascii	"Basho Matsuo\n"