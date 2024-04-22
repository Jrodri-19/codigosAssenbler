.data
    prompt1: .asciiz "Ingresa el primer número: "
    prompt2: .asciiz "Ingresa el segundo número: "
    result_prompt: .asciiz "El resultado es: "

.text
    main:
        # Imprimir prompt1
        li $v0, 4
        la $a0, prompt1
        syscall
        
        # Leer el primer número
        li $v0, 5
        syscall
        move $s0, $v0
        
        # Imprimir prompt2
        li $v0, 4
        la $a0, prompt2
        syscall
        
        # Leer el segundo número
        li $v0, 5
        syscall
        move $s1, $v0
        
        # Sumar los números
        add $s2, $s0, $s1
        
        # Imprimir el resultado
        li $v0, 4
        la $a0, result_prompt
        syscall
        
        move $a0, $s2
        li $v0, 1
        syscall
        
        # Salir del programa
        li $v0, 10
        syscall
