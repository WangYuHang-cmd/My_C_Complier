.data
_Prompt: .asciiz "Enter an integer:  "
_ret: .asciiz "\n"
.globl main
.text
read:
  li $v0,4
  la $a0,_Prompt
  syscall
  li $v0,5
  syscall
  jr $ra
write:
  li $v0,1
  syscall
  li $v0,4
  la $a0,_ret
  syscall
  move $v0,$0
  jr $ra

solve:
  li $t3, 5
  sw $t3, 16($sp)
  lw $t1, 0($sp)
  move $t3, $t1
  sw $t3, 0($sp)
  lw $v0,12($sp)
  jr $ra
label1:

main:
  addi $sp, $sp, -20
  lw $t1, 7298320($sp)
  move $t3, $t1
  sw $t3, 0($sp)
  li $t3, 0
  sw $t3, 16($sp)
  lw $v0,16($sp)
  jr $ra
label2:
