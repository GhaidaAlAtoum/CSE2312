/*
    NAME : Ghaida Al-Atoum    1001228672

    HW2 , Question c
    Implement:
        sum =0
        for( i =1; i<=15 ;i++){
           if( i%2 != 0 ) sum += i;
        }
*/

    .global _start

_start:
    mov R0 , #0   @ sum =0
    mov R1 , #1   @ the loop counter i=1
   
loop:
   cmp R1, #15      @ while( the loop counter is <= 15)
   bgt _exit
   and R2, R1, #1   @ bit wise and the loop counter with #1 then  put the value in R2
   cmp R2, #1       @ if R2 is #1 then the number is odd
   bne cont         @ if it is not odd just continue the loop
   add R0, R1       @ if it is odd update the sum then continue wih the loop

cont:
  add R1, #1        @ update the loop counter
  bal loop          @ back to the loop

_exit:
    mov R7 , #1
    swi 0
