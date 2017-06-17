/*
    Tue Jun 13 18:27:59 UTC 2017

    basic program

    
  as -o ex20170613a.o ex20170613a.s 
  ld -o ex20170613a ex20170613a.o
  ./ex20170613a 
  echo $?
*/

    .global _start

_start:
    mov r1, #13     @ store 13 in R1
    mov r2, #24     @ store 24 in R2
    add r0, r1, r2  @ R0 = R1 + R2

_exit:
    mov r7, #1      @ 1 is the syscall for exiting
    swi 0           @ software interrupt
