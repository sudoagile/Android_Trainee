Proceso EjercicioMatriz
	
	Definir matriz, f, c, num1, num2 Como Entero;
	
	Dimension matriz[5,5];
	
	Para f = 0 Hasta 4 Con Paso 1 Hacer
		Para c = 0 Hasta 4 Con Paso 1 Hacer
			matriz[f, c] = f + c;
		FinPara
	FinPara
	
	Para f = 0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar "| ";
		Para c = 0 Hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[f, c], " | ";
		FinPara
		Escribir " ";
	FinPara
	
FinProceso

