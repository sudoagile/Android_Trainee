Algoritmo pantallaInicial
	Definir i, j, k, m, max como enteros;
	Definir string Como Caracter;
	k = 0;
	m= 0;
	max = 0;
	j = 0;
	
	Repetir
		para i= 0 hasta azar(20) Hacer
			Escribir " ";
		FinPara
		
		Para i=0 Hasta azar(50) Hacer
			Escribir Sin Saltar " ";
		FinPara
		string = "";
		k = Aleatorio(1, 100);
		m = azar(40);
		para i = 1 hasta k hacer
			para j = 1 hasta m hacer
				string = string + " ";
			FinPara
			m = azar(40);
			string = string + ConvertirATexto(azar(10)); 
		FinPara
		
		Escribir string;
		esperar 100 Milisegundos; Borrar Pantalla;
		//esperar 2 segundos; Borrar Pantalla;
		max = max +1;
	Hasta Que max = 500
	Esperar Tecla; Borrar Pantalla;
FinAlgoritmo
