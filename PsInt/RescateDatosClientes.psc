Algoritmo RescateDatosClientes
   
    Escribir("Ingrese su RUT (menor a 99.999.999):")
    Leer rut
    Si rut >= 100000000 Entonces
        Escribir("Error: RUT inv�lido")
    Fin Si
	
    Escribir("Ingrese sus nombres: *Campo Obligatorio")
    Leer nombres
	Si nombres == "" Entonces
        Escribir("Error: Por favor ingrese sus nombres")
    Fin Si
	
    Escribir("Ingrese sus apellidos: *Campo Obligatorio")
    Leer apellidos
	Si apellidos == "" Entonces
        Escribir("Error: Por favor ingrese sus apellidos")
    Fin Si
	
    Escribir("Ingrese su tel�fono (no m�s de 15 caracteres):")
    Leer telefono
    Si Longitud(telefono) > 15 Entonces
        Escribir("Error: Tel�fono inv�lido")
    Fin Si
	
    Escribir("Ingrese su AFP: *Campo Obligatorio")
    Leer afp
    Si afp == "" Entonces
        Escribir("Error: AFP inv�lida")
    Fin Si
	
    Escribir("Ingrese su sistema de salud (1 para Fonasa, 2 para Isapre):")
    Leer sistema
    Si sistema <> 1 Y sistema <> 2 Entonces
        Escribir("Error: Sistema de salud inv�lido")
    Fin Si
	
    Escribir("Ingrese su direcci�n (texto no superior a 50 caracteres):")
    Leer direccion
    Si Longitud(direccion) > 50 Entonces
        Escribir("Error: Direcci�n inv�lida")
    Fin Si
	
    Escribir("Ingrese su comuna: *Campo Obligatorio")
    Leer comuna
    Si comuna == "" Entonces
        Escribir("Error: Comuna inv�lida")
    Fin Si
	
    Escribir("Ingrese su edad (menor a 120 a�os):")
    Leer edad
    Si edad >= 120 Entonces
        Escribir("Error: Edad inv�lida")
    Fin Si
	

    Escribir("Datos del cliente:")
    Escribir"RUT:" rut
    Escribir"Nombres:" nombres
    Escribir"Apellidos:" apellidos
    Escribir"Tel�fono:" telefono
    Escribir"AFP:" afp
    Si sistema == 1 Entonces
        Escribir("Sistema de salud: Fonasa")
    Sino
        Escribir("Sistema de salud: Isapre")
    Fin Si
    Escribir"Direcci�n:" direccion
    Escribir"Comuna:" comuna
    Escribir"Edad:" edad
Fin Algoritmo