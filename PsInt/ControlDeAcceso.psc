Proceso AccessControl
    Definir users Como Vector de 3 Cadenas
    Definir passwords Como Vector de 3 Cadenas
    Definir userName, password Como Cadena
    Definir found Como Logico
    Definir i Como Entero
	
    users[1] <- "user1"
    users[2] <- "user2"
    users[3] <- "user3"
	
    passwords[1] <- "password1"
    passwords[2] <- "password2"
    passwords[3] <- "password3"
	
    Escribir "Enter your username: "
    Leer userName
	
    Escribir "Enter your password: "
    Leer password
	
    found <- Falso
	
    Para i <- 1 Hasta 3 Hacer
        Si userName = users[i] Y password = passwords[i] Entonces
            found <- Verdadero
        FinSi
    FinPara
	
    Si found Entonces
        Escribir "Access granted. Welcome, ", userName, "."
    Sino
        Escribir "Access denied. Incorrect username or password."
    FinSi
FinProceso

