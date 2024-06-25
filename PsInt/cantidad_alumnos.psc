Algoritmo sin_titulo
	
	Definir edad Como Entero
	Definir cantidadAlumnos Como Entero
	Definir cantidadMayores Como Entero
	
	edad <- 0
	cantidadAlumnos <- 10
	cantidadMayores <- 0
	
	Para i<-1 Hasta cantidadAlumnos Con Paso 1 Hacer
		Escribir "Ingresa la edad del estudiante: " i
		Leer edad
		
		Si edad >= 18 Entonces
			cantidadMayores = cantidadMayores + 1
		FinSi
		
	Fin Para
	
	Escribir "La cantidad de alumnos mayores es: " cantidadMayores
	
FinAlgoritmo