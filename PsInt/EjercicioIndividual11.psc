Algoritmo Suma_Diagonales_Matriz_4x4
	
	Definir matriz Como Entero;
	Dimension matriz[4, 4];
	
	Definir sumaDiagonalPrincipal, sumaDiagonalSuperior, sumaDiagonalInferior, i, j Como Entero;
	sumaDiagonalPrincipal <- 0;
	sumaDiagonalSuperior <- 0;
	sumaDiagonalInferior <- 0;
	
	Escribir "Ingrese los valores de la matriz 4x4:";
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			Escribir "Ingrese el valor para matriz[", i, "][", j, "]:";
			Leer matriz[i, j];
		FinPara;
	FinPara;
	
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		sumaDiagonalPrincipal <- sumaDiagonalPrincipal + matriz[i, i];
	FinPara;
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = i + 1 Hasta 3 Con Paso 1 Hacer
			sumaDiagonalSuperior <- sumaDiagonalSuperior + matriz[i, j];
		FinPara;
	FinPara;
	
	Para i = 1 Hasta 3 Con Paso 1 Hacer
		Para j = 0 Hasta i - 1 Con Paso 1 Hacer
			sumaDiagonalInferior <- sumaDiagonalInferior + matriz[i, j];
		FinPara;
	FinPara;
	
	Escribir "Suma de la diagonal principal: ", sumaDiagonalPrincipal;
	Escribir "Suma de la diagonal superior: ", sumaDiagonalSuperior;
	Escribir "Suma de la diagonal inferior: ", sumaDiagonalInferior;
	
	Si sumaDiagonalSuperior + sumaDiagonalInferior < sumaDiagonalPrincipal Entonces
		Escribir "La suma de la diagonal superior e inferior es menor que la suma de la diagonal principal.";
	Sino
		Escribir "La suma de la diagonal superior e inferior NO es menor que la suma de la diagonal principal.";
	FinSi;
	
FinAlgoritmo


