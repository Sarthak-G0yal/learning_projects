# A program to compute the GCD and LCM of the two numbers and print the result.

.data
num1:   .word 36
num2:   .word 60
newline: .asciiz "\n"
gcd: .asciiz "GCD : "
lcm: .asciiz "LCM : "

.text
.globl main
main:
    la      $t0,    num1
    lw      $t1,    0($t0)      
    la      $t0,    num2
    lw      $t2,    0($t0)
    move    $t3,    $t1         
    move    $t4,    $t2         

gcd_loop:
    beq     $t2,    $zero,  print  
    div     $t1,    $t2               
    mfhi    $t5                       
    move    $t1,    $t2               
    move    $t2,    $t5               
    j       gcd_loop              

print:
    la      $a0,    gcd
    li      $v0,    4                
    syscall
    move    $a0,    $t1
    li      $v0,    1                
    syscall

    la      $a0,    newline
    li      $v0,    4                
    syscall

    la      $a0,    lcm 
    li      $v0,    4                
    syscall

lcm_cal:
    mul     $t6,    $t3,    $t4         
    div     $t6,    $t1
    mflo    $a0 
    li      $v0,    1                
    syscall

exit:
    li      $v0,    10
    syscall
