             .data

mensagem:       .asciiz "Digite um numero: \n"
numero:         .word 1
dobro:          .word 1
  
        .text

main:   li $v0, 4
        la $a0, mensagem
        syscall
        li $v0, 5
        syscall
   
        sw $v0, numero
        mul $t0, $v0, 2
        sw $t0, dobro
        li $v0, 1
        move $a0, $t0
        syscall
   
        jr $ra
