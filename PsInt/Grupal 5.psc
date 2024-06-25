SubProceso bar <- barra (n)
	definir i Como Entero;
	definir bar Como Caracter;
	bar = "";
	Para i=0 Hasta n-1 Hacer
		bar = "*" + bar;
	FinPara
	
FinSubProceso
SubProceso ordenar(tasa Por Referencia, clientes Por Referencia, dim por valor)
	// Algoritmo bubble sort
	definir i, j, t Como Entero;
	definir k Como Caracter;
	definir max Como Entero;
	max := dim-2  ;
	para  i = 0 hasta max hacer
		Para j= 0 Hasta max Hacer
			si tasa[j] < tasa[j+1] entonces
				t := tasa[j];
				tasa[j] := tasa[j+1];
				tasa[j+1] := t;
				
				k := clientes[j];
				clientes[j] = clientes[j+1];
				clientes[j+1] = k;
				
			FinSi
		FinPara
	Finpara	
FinSubProceso
Algoritmo  grupal_05
	definir clientes Como Caracter;
	definir i, j, num_clientes, init, tasa, copia_tasa Como Entero;
	definir letras, bar Como Caracter;
	letras="abcdefghijklmnñopqrstuvwxyz";
	pantallaInicial();
	Escribir "Numero de elementos a generar:(no más de 100, por defecto 10)" ; leer num_clientes;
	si num_clientes = 0 o num_clientes >100 Entonces
		num_clientes = 10;
	FinSi
	Dimension clientes[num_clientes];
	Dimension tasa[num_clientes];
	Dimension copia_tasa[num_clientes];
	Borrar Pantalla;
	
	//Cargar los arreglos con datos aleatorios
	Escribir "DATOS DESORDENADOS GENERADOS ALEATORIAMENTE";
	i=0;
	Repetir 
		init = azar(26);
		si init+5 < 26 Entonces
			clientes[i] = SubCadena(letras, init, init+5);
			tasa[i] = azar(100);
			bar = barra(tasa[i]);
			Escribir "Clte.: " + clientes[i] + " == " + "Tasa: " + ConvertirATexto(tasa[i]) + bar;
			i=i+1;
		FinSi
	Hasta Que i = num_clientes
	ordenar(tasa, clientes , num_clientes);
	//Mostramos los datos clientes y tasas ordenados	de mayor a menor
	Escribir "PAREJAS CLIENTE - TASA ORDENADAS DE MAYOR A MENOR";
	Para i=0 Hasta num_clientes-1 Hacer
		bar = barra(tasa[i]);
		Escribir "Clte.: " + clientes[i] + " == " + "Tasa: " + ConvertirATexto(tasa[i]) + bar;
	FinPara
FinAlgoritmo
//--------------------------------------------------------------------------------------------
//Pantalla de inicio
SubAlgoritmo pantallaInicial
	Definir i, j, max, espacios como enteros;
	definir texto, subtitle, subtitle2 Como Caracter;
	texto = "Unfair Solutions, presenta:";
	subtitle = "EJERCICIO GRUPAL N° 5";
	subtitle2 = "<<  Grupo 6  >>";
	max = Longitud(texto);
	j = 0;
	Para i=0 Hasta max-1 Hacer
		Escribir Sin Saltar SubCadena(texto,i,i+1);
		//Escribir sin saltar "=>";
		esperar 130 Milisegundos; Borrar Pantalla;
		
		Para j=0 Hasta i Hacer
			Escribir Sin Saltar " ";
			
		FinPara
	FinPara
	Escribir "";
	centrar(subtitle); centrar(subtitle2); centrar("(presione enter)");
	Esperar Tecla; Borrar Pantalla;
FinSubAlgoritmo
SubAlgoritmo centrar (txt)
	Definir espacios, i Como Entero;
	espacios = redon((58 - Longitud(txt)) / 2);
	Para i= 0 Hasta espacios Hacer
		Escribir Sin Saltar" ";
	FinPara
	Escribir txt;
FinSubAlgoritmo


