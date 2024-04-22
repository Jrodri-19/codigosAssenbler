.data
    myMessage: .asciiz "Hello World\n"  # Se eliminó el espacio después de "Hello World"
.text
    li $v0, 4
    la $a0, myMessage   # Utiliza la instrucción "la" para cargar la dirección de memoria de myMessage en $a0
    syscall
