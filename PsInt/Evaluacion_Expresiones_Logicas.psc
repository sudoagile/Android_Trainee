Proceso Evaluacion_Expresiones_Logicas
    Definir V1, V2, V3 Como Logico;
    
    // Evaluar V1
    V1 <- (('A' > 'B') O (Largo("Hola mundo") = 10));
    // Respuesta esperada: Verdadero. Resultado: Verdadero.
    
    Escribir "*** Evaluación de la expresión V1 ***"
    Escribir "Resultado de V1: ", V1
    Si V1 = Verdadero Entonces
        Escribir "Correcto: La expresión es Verdadera."
    SiNo
        Escribir "Incorrecto: La expresión es Falsa."
    FinSi
    
    // Evaluar V2
    V2 <- No((5 + 2) < 7) Y No((7 > 9) O (3 < 5) Y (4 = 3))
    // Respuesta esperada: Verdadero. Resultado: Verdadero.
    
    Escribir "*** Evaluación de la expresión V2 ***"
    Escribir "Resultado de V2: ", V2
    Si V2 = Verdadero Entonces
        Escribir "Correcto: La expresión es Verdadera."
    SiNo
        Escribir "Incorrecto: La expresión es Falsa."
    FinSi
    
    // Evaluar V3
    V3 <- ((2 * 3 + 5 -7) > (2 * (2 + 5))) O ((10 - 5) < 20)
    // Respuesta esperada: Verdadero. Resultado: Verdadero.
    
    Escribir "*** Evaluación de la expresión V3 ***"
    Escribir "Resultado de V3: ", V3
    Si V3 = Verdadero Entonces
        Escribir "Correcto: La expresión es Verdadera."
    SiNo
        Escribir "Incorrecto: La expresión es Falsa."
    FinSi
	
    Escribir "*** Ejecución Finalizada ***"
FinProceso
