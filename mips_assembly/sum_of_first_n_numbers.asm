.data
sum: .word 0
op: .word 1
.text
.globl main
main:
la $t3, sum
lw $t1, 0($t3)
la $t3,op
lw $t2,0($t3)
loop:
add $t1 , $t1 , $t2
addi $t2 ,$t2 , 1
ble $t2 , 10 , loop
print:
add $a0, $0, $t1
add $v0, $0, 1
syscall
add $v0, $0, 10
syscall
