Algoritmo sin_titulo
	
	Definir edad Como Entero
	Definir cantidadAlumnos Como Entero
	Definir contador Como Entero
	Definir cantidadMayores Como Entero
	
	edad <- 0
	cantidadAlumnos <- 10
	contador <- 1
	cantidadMayores <- 0
	
	Mientras contador <= cantidadAlumnos Hacer
		Escribir "Ingresa la edad del estudiante: " contador
		Leer edad
		
		Si edad >= 18 Entonces
			cantidadMayores = cantidadMayores + 1
		FinSi
		
		contador = contador + 1
		
	Fin Mientras
	
	Escribir "La cantidad de alumnos mayores es: " cantidadMayores
	
	
FinAlgoritmo