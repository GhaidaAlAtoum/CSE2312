/*
    Tue Jun 13 19:28:19 UTC 2017

    logical shifts
*/

    .global _start

_start:
    mov r0, #50
    lsr r0, #3     @ shift bit pattern in R0 to the right 3 times

_exit:
    mov r7, #1
    swi 0
