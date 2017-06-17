/*
    Tue Jun 13 18:53:09 UTC 2017

    limits on size of number in R0 when viewing with echo $?
*/

    .global _start

_start:
    mov r1, #26     @ put 26 into R1
    mov r2, #10     @ put 10 into R2
    mul r0, r1, r2  @ R0 = R1 * R2

_exit:
    mov r7, #1
    swi 0
