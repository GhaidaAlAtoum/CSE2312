/*
    Thu Jun 15 18:18:18 UTC 2017

    look at current program status register (cpsr)
*/

    .global _start

_start:
    mov r0, #1
    cmp r0, #5       @ compare r0 to 5
    mrs r0, cpsr     @ move to register from system coprocessor register
    lsr r0, #28      @ shift right 28 times so we can see high 4 bits

_exit:
    mov r7, #1
    swi 0
