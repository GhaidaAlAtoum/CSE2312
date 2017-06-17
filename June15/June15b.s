/*
    Thu Jun 15 18:33:35 UTC 2017

    construct the equivalent to
      y = 4;

      if(x < 5)
        y = 10;
*/

    .global _start

_start:
    mov r1, #5    @ our x from above
    mov r0, #4    @ our y from above

    cmp r1, #5    
    bge _exit     @ branch if x >= 5
    mov r0, #10   @ y = 10

_exit:
    mov r7, #1
    swi 0
