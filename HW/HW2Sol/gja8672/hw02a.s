/*
    NAME : Ghaida Al-Atoum    1001228672

  HW2 , Question # 1

     In (c) subtract the number in 1b from 1a = 1a - 1b 
*/

    .global _start

_start:
    mov R1, #13        
    mov R2, #0b110   @ 0b110 = 6 
    SUB R3, R1 , R2  @ R3 = R1 - R2 = 1a - 1b = 7 
    mov R1, #0x14    @ 0x14 = 20 , reuse R1 cause there is no need for the value stored in it 
    mul R4, R3, R1   @ R4 = R3 * R1 = 140
    LSR R0, R4, #2   @ shiftting the bit 2 times to the right means division by 4 
                     @ Final answer must be 35 = ((13-6)*20)/4
_exit:
    mov R7, #1
    swi 0
 
