Algoritmo ConversionMonedaPrograma
	
    Definir monto, resultadoConversion Como Real;
    Definir tipodivisa Como Cadena;
	
    Escribir "Ingrese el monto a convertir (número decimal):";
    Leer monto;
	
    Escribir "Ingrese el tipo de divisa (DOLAR, EURO, YEN):";
    Leer tipodivisa;
	
    // Validar el tipo de divisa
    Si tipodivisa <> "DOLAR" Y tipodivisa <> "EURO" Y tipodivisa <> "YEN" Entonces
        Escribir "Tipo de divisa no válido. Las opciones válidas son DOLAR, EURO, YEN.";
        Salir;
    FinSi;
	
    resultadoConversion <- ConversionMoneda(monto, tipodivisa);
	
    Si resultadoConversion <> 0 Entonces
        Escribir "El monto en pesos chilenos es: ", resultadoConversion;
    Sino
        Escribir "No se pudo realizar la conversión debido a un tipo de divisa no válido.";
    FinSi;
	
FinAlgoritmo

