/*
    Thu Jun 15 19:10:22 UTC 2017

    implement
      sum = 0;
      i = 1;
      while(i < 4)
      {
          sum = sum + i;
          i = i + 1;
      }
*/

    .global _start

_start:
    mov r0, #0     @ initialize sum
    mov r1, #1     @ initialize loop counter

loop:
    cmp r1, #4
    beq _exit      @ stop when r1 = 4

    add r0, r1     @ sum += i from above
    add r1, #1     @ i++ from above

    bal loop

_exit:
    mov r7, #1
    swi 0
