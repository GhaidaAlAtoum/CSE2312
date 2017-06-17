/*
    Thu Jun 15 18:50:52 UTC 2017

    implement if/else structure

    x = ?;

    if(x > 13)
        y = 10;
    else
        y = 25;

    z = 30;
*/

    .global _start

_start:
    mov r1, #10     @ our x from above

    cmp r1, #13
    ble else        @ branch if x <= 13
    mov r0, #10     @ y = 10
    bal end         @ don't perform the else
else:
    mov r0, #25     @ y = 25

end:
    mov r3, #30

_exit:
    mov r7, #1
    swi 0
