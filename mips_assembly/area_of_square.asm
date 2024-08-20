# A program to calculate the area of a square and display it.

.data
side:   .word   4
.text
.globl data
main:
    la      $t3,    side
    lw      $t0,    0($t3)
    mul     $t1,    $t0,    $t0
    addi    $v0,    $0,     1
    add     $a0,    $0,     $t1
    syscall
    addi    $v0,    $0,     10
    syscall
