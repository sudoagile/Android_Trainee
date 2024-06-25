Proceso EjercicioMatriz
	
	Definir notas, promedio Como Real;
	Definir i, j Como Entero;
	Dimension notas[4,4];
	
	// Inicio de Cargar Notas 
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		promedio = 0;
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir "Ingresa la nota ", j + 1, " del alumno n°", i + 1, ": ";
			Leer notas[i,j];
			promedio = promedio + notas[i,j];
		FinPara
		notas[i,3] = promedio / 3;
	FinPara
	// Fin de Cargar Notas
	
	// Inicio de Mostrar notas
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		Escribir Sin Saltar "| ";
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar notas[i,j], " | ";
		FinPara
		Escribir " ";
	FinPara
	// Fin de Mostrar notas 
	
	
	
FinProceso