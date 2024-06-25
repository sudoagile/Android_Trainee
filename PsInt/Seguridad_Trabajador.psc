Proceso Seguridad_Trabajador
    Definir Q, R, S, T Como Logico;
    // Solicitar información al usuario
    Escribir "Indique si el trabajador cuida los procedimientos de seguridad (verdadero o falso):";
    Leer Q;
    Escribir "Indique si el trabajador lee el manual de seguridad (verdadero o falso):";
    Leer S;
    Escribir "Indique si el trabajador ha sufrido incidentes (verdadero o falso):";
    Leer T;
    
    // Evaluar si ocurre un accidente
    R <- Falso;
    Si No Q Entonces
        R <- Verdadero;
		Escribir "Ocurrira un accidente por descuidar los procedimientos de seguridad";
    FinSi
    Si No S Entonces
        R <- Verdadero;
		Escribir "Ocurrira un accidente por no leer el manual de seguridad";
    FinSi
    
    // Evaluar si ha seguido todos los procedimientos
    Q <- Verdadero;
	S <- Verdadero;
    Si T = Verdadero Entonces
        Q <- Falso;
		S <- Falso;
		Escribir "No ha seguido todos los procedimientos o no ha leido el manual";
	SiNo
		Escribir "El trabajador ha seguido todos los procedimientos y ha leido el manual";
    FinSi
    
    // Determinar el resultado final
    Si S y Q Entonces
        Escribir "El trabajador ha seguido todos los procedimientos y Leido el Manual, por tanto no ocurrirá un accidente";
    SiNo
        Escribir "El trabajador ha cometido una falta, por tanto ocurrira un accidente.";
    FinSi
FinProceso