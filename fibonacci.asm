# Programa para calcular y mostrar la serie de Fibonacci en MARS

.data
    prompt: .asciiz "Ingresa la cantidad de términos de Fibonacci: "
    result: .asciiz "Serie de Fibonacci: "

.text
.globl main

main:
    # Solicitar al usuario la cantidad de términos
    li $v0, 4
    la $a0, prompt
    syscall

    # Leer la entrada del usuario
    li $v0, 5
    syscall
    move $t0, $v0  # Almacenar la cantidad de términos en $t0

    # Inicializar los primeros dos términos de la serie
    li $t1, 0  # F(0)
    li $t2, 1  # F(1)

    # Mostrar los primeros términos de la serie
    li $v0, 4
    la $a0, result
    syscall
    loop:
        # Mostrar el valor actual de la serie
        move $a0, $t1
        li $v0, 1
        syscall

        # Calcular el siguiente término
        add $t3, $t1, $t2
        move $t1, $t2
        move $t2, $t3

        # Decrementar la cantidad de términos restantes
        subi $t0, $t0, 1
        bnez $t0, loop  # Si quedan términos, repetir el bucle

    # Salir del programa
    li $v0, 10
    syscall
