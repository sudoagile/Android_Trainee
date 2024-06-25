Proceso TablaDeMultiplicar
	
	Definir matriz, f, c, multiplo Como Entero;
	
	Dimension matriz[9,9];
	
	Para f = 0 Hasta 8 Con Paso 1 Hacer
		Para c = 0 Hasta 8 Con Paso 1 Hacer
			matriz[f,c] = (f+1)*(c+1);
		FinPara
	FinPara
	
	Para f = 0 Hasta 8 Con Paso 1 Hacer
		Escribir Sin Saltar "| "; 
		Para c = 0 Hasta 8 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[f,c], + " | ";
		FinPara
		Escribir " ";
		
	FinPara
	
FinProceso
