# A program that stores 6 numbers. The program should print the numbers which are even, odd and the average of all the entered numbers.

.data
total:  .word 6
num1:   .word 13
num2:   .word 17
num3:   .word 25
num4:   .word 84
num5:   .word 7
num6:   .word 4
two:    .word 2
newline: .asciiz "\n"

even_msg:   .asciiz "Even: "
odd_msg:    .asciiz "Odd: "
avg_msg:    .asciiz "Average: "

.text
.globl main
main:
    la      $t6,    num1
    lw      $t0,    0($t6)
    la      $t6,    num2
    lw      $t1,    0($t6)
    la      $t6,    num3
    lw      $t2,    0($t6)
    la      $t6,    num4
    lw      $t3,    0($t6)
    la      $t6,    num5
    lw      $t4,    0($t6)
    la      $t6,    num6
    lw      $t5,    0($t6)
    la      $t6,    total
    lw      $t7,    0($t6)


avg:
    add     $t6,    $t0,    $t1
    add     $t6,    $t6,    $t2
    add     $t6,    $t6,    $t3
    add     $t6,    $t6,    $t4
    add     $t6,    $t6,    $t5

    la      $a0,    avg_msg
    li      $v0,    4
    syscall

    div     $t6,    $t7
    mflo    $a0
    li      $v0,    1
    syscall

    la      $a0,    newline
    li      $v0,    4                
    syscall

even_odd:
check_num1:
    la      $t8,    two
    lw      $t9,    0($t8)
    
    div     $t0,    $t9
    mfhi    $t8
    beq     $t8,    $zero,  even_num1
odd_num1:
    la      $a0,    odd_msg
    li      $v0,    4
    syscall
    move    $a0,    $t0
    li      $v0,    1
    syscall
    j       check_num2
even_num1:
    la      $a0,    even_msg
    li      $v0,    4
    syscall
    move    $a0,    $t0
    li      $v0,    1
    syscall

check_num2:
    la      $a0,    newline
    li      $v0,    4                
    syscall

    div     $t1,    $t9
    mfhi    $t8
    beq     $t8,    $zero,  even_num2

odd_num2:
    la      $a0,    odd_msg
    li      $v0,    4
    syscall
    move    $a0,    $t1
    li      $v0,    1
    syscall
    j       check_num3

even_num2:
    la      $a0,    even_msg
    li      $v0,    4
    syscall
    move    $a0,    $t1
    li      $v0,    1
    syscall

check_num3:
    la      $a0,    newline
    li      $v0,    4                
    syscall

    div     $t2,    $t9
    mfhi    $t8
    beq     $t8,    $zero,  even_num3
odd_num3:
    la      $a0,    odd_msg
    li      $v0,    4
    syscall
    move    $a0,    $t2
    li      $v0,    1
    syscall
    j       check_num4
even_num3:
    la      $a0,    even_msg
    li      $v0,    4
    syscall
    move    $a0,    $t2
    li      $v0,    1
    syscall

check_num4:
    la      $a0,    newline
    li      $v0,    4                
    syscall

    div     $t3,    $t9
    mfhi    $t8
    beq     $t8,    $zero,  even_num4
odd_num4:
    la      $a0,    odd_msg
    li      $v0,    4
    syscall
    move    $a0,    $t3
    li      $v0,    1
    syscall
    j       check_num5
even_num4:
    la      $a0,    even_msg
    li      $v0,    4
    syscall
    move    $a0,    $t3
    li      $v0,    1
    syscall

check_num5:
    la      $a0,    newline
    li      $v0,    4                
    syscall

    div     $t4,    $t9
    mfhi    $t8
    beq     $t8,    $zero,  even_num5
odd_num5:
    la      $a0,    odd_msg
    li      $v0,    4
    syscall
    move    $a0,    $t4
    li      $v0,    1
    syscall
    j       check_num6
even_num5:
    la      $a0,    even_msg
    li      $v0,    4
    syscall
    move    $a0,    $t4
    li      $v0,    1
    syscall

check_num6:
    la      $a0,    newline
    li      $v0,    4                
    syscall

    div     $t5,    $t9
    mfhi    $t8
    beq     $t8,    $zero,  even_num6
odd_num6:
    la      $a0,    odd_msg
    li      $v0,    4
    syscall
    move    $a0,    $t5
    li      $v0,    1
    syscall
    j exit
even_num6:
    la      $a0,    even_msg
    li      $v0,    4
    syscall
    move    $a0,    $t5
    li      $v0,    1
    syscall

exit:
    li      $v0,    10
    syscall


