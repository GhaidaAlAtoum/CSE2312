/*
    Tue Jun 13 19:10:59 UTC 2017

    bitwise operators
*/

    .global _start

_start:
    mov r1, #0x3     @ 0x means this is a hexadecimal representation
    mov r2, #0b101   @ 0b means this is a binary representation
/*
    and r0, r1, r2   @ bitwise and
    orr r0, r1, r2   @ bitwise inclusive or
*/
    eor r0, r1, r2   @ bitwise exclusive or

_exit:
    mov r7, #1
    swi 0
