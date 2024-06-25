Proceso TablaMultiplicar2
    Definir tabla Como Entero;
    Definir i, j Como Entero;
    Dimension tabla[10,10];
	
    Para i = 0 Hasta 9 Con Paso 1 Hacer
        tabla[0, i] = i;
        tabla[i, 0] = i;
    FinPara
	
    Para i = 1 Hasta 9 Con Paso 1 Hacer
        Para j = 1 Hasta 9 Con Paso 1 Hacer
            tabla[i, j] = i * j;
        FinPara
    FinPara
	
    Para i = 0 Hasta 9 Con Paso 1 Hacer
        Escribir Sin Saltar "| ";
        Para j = 0 Hasta 9 Con Paso 1 Hacer
            Escribir Sin Saltar tabla[i, j], " | ";
        FinPara
        Escribir " ";
    FinPara
	
FinProceso
