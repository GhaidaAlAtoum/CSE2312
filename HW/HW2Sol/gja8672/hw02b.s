/*
    NAME : Ghaida Al-Atoum    1001228672

   HW2 , Question 2
   implementing 
      sum = 0
      i=20 
    while( sum < 105 ) {
       sum = sum + i;
       i--;
    }  // the loop will break when the sum is >= 105
    The last nmber that cause the sum to exceed 105 will be 15    
*/
    .global _start

_start:
     mov R0, #20  @ i = 20
     mov R1, #0   @ sum =0

loop:
    cmp R1, #105  @ check if the sum reached 105 or bigger
    bge case      
    add R1,R0     @ update the sum 
    sub R0, #1    @ update the loop counter
    bal loop     

case: 
   add R0, #1     @ add one to the loop counter in order to get the last number 
                  @ that cused the sum to exceed 105 
    
_exit:
    mov R7,#1
    swi 0

