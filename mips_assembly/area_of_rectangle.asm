# A program to calculate the area of a rectangle and display it.

.data
length:  .word  4
breadth: .word  5
.text
.globl data
main:
la      $t3,    length
lw      $t0,    0($t3)
la      $t3,    breadth
lw      $t1,    0($t3)
mul     $t2 ,   $t0,    $t1
addi    $v0,    $0,     1
add     $a0,    $0,     $t2
syscall
addi    $v0,    $0,     10
syscall