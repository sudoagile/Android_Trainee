Algoritmo sin_titulo
	
	Definir usuarioAlmacenado Como Cadena
	Definir passAlmacenada Como Cadena
	Definir nuevoUsuario Como Cadena
	Definir nuevaPass Como Cadena
	Definir contadorDeFallas Como Entero
	
	usuarioAlmacenado <- "Juanito"
	passAlmacenada <- "12345s"
	contadorDeFallas <- 0
	
	Repetir
		Escribir "Ingresa tu usuario: "
		Leer nuevoUsuario
		
		Escribir "Ingresa tu contraseña"
		Leer nuevaPass
		
		Si nuevoUsuario == usuarioAlmacenado Entonces
			Si nuevaPass == passAlmacenada Entonces
				Escribir "Bienvenido, ingreso exitoso"
			SiNo
				Escribir "Contraseña Incorrecta, por favor vuelve a intentarlo"
				contadorDeFallas <- contadorDeFallas + 1
			FinSi
		SiNo
			Escribir "Usuario Incorrecto, por favor vuelve a intentarlo"
			contadorDeFallas <- contadorDeFallas + 1
			
			Si contadorDeFallas == 3 Entonces
				Escribir "Cuenta bloqueada, intentalo más tarde"
			FinSi
		FinSi
	Hasta Que ((usuarioAlmacenado == nuevoUsuario) Y (passAlmacenada == nuevaPass)) O contadorDeFallas == 3
	
	
	
	
	
FinAlgoritmo