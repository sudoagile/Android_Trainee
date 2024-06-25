Algoritmo ConversionMonedaPrograma
	
    Definir monto, resultadoConversion Como Real;
    Definir tipodivisa Como Cadena;
	
    Escribir "Ingrese el monto a convertir (n�mero decimal):";
    Leer monto;
	
    Escribir "Ingrese el tipo de divisa (DOLAR, EURO, YEN):";
    Leer tipodivisa;
	
    // Validar el tipo de divisa
    Si tipodivisa <> "DOLAR" Y tipodivisa <> "EURO" Y tipodivisa <> "YEN" Entonces
        Escribir "Tipo de divisa no v�lido. Las opciones v�lidas son DOLAR, EURO, YEN.";
        Salir;
    FinSi;
	
    resultadoConversion <- ConversionMoneda(monto, tipodivisa);
	
    Si resultadoConversion <> 0 Entonces
        Escribir "El monto en pesos chilenos es: ", resultadoConversion;
    Sino
        Escribir "No se pudo realizar la conversi�n debido a un tipo de divisa no v�lido.";
    FinSi;
	
FinAlgoritmo

