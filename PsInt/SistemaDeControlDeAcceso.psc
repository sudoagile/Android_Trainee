Algoritmo SistemaDeControlDeAcceso
	
  
    Definir usuarioCorrecto Como Caracter
    Definir contrasenaCorrecta Como Caracter
    Definir usuario Como Caracter
    Definir contrasena Como Caracter
    Definir intentos Como Entero
    Definir accesoConcedido Como Logico
    
  
    usuarioCorrecto <- "admin"
    contrasenaCorrecta <- "1234"
    intentos <- 0
    accesoConcedido <- Falso
	
    Mientras intentos < 3 Y accesoConcedido = Falso Hacer
        Escribir "Ingrese su nombre de usuario: "
        Leer usuario
        Escribir "Ingrese su contraseña: "
        Leer contrasena
		
        Si usuario = usuarioCorrecto Y contrasena = contrasenaCorrecta Entonces
            Escribir "Acceso concedido"
            accesoConcedido <- Verdadero
        Sino
            Escribir "Error: Nombre de usuario o contraseña incorrectos"
            intentos <- intentos + 1
            Si intentos < 3 Entonces
                Escribir "Intente nuevamente"
            FinSi
        FinSi
    FinMientras
	

    Si accesoConcedido = Falso Entonces
        Escribir "Su cuenta ha sido bloqueada después de 3 intentos fallidos"
    FinSi
	
FinAlgoritmo
