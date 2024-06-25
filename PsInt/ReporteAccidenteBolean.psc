Algoritmo ReporteAccidente
	
    // Definición de variables
    Definir tipoAccidente Como Caracter
    Definir jefeAvisado, diatPresentada Como Logico
    Definir esAccidenteGrave Como Logico
    Definir tieneTestigos, partePolicial Como Logico
    Definir detalleAccidente Como Caracter
    Definir fecha, hora, lugar Como Caracter
    Definir respuesta Como Caracter
	
    // Inicialización de variables
    jefeAvisado <- Falso
    diatPresentada <- Falso
    esAccidenteGrave <- Falso
    tieneTestigos <- Falso
    partePolicial <- Falso
    fecha <- ""
    hora <- ""
    lugar <- ""
    detalleAccidente <- ""
	
    // Entrada del tipo de accidente
    Escribir "Ingrese el tipo de accidente (trabajo/trayecto): "
    Leer tipoAccidente
	
    // Proceso según tipo de accidente
    Si tipoAccidente = "trabajo" Entonces
        Escribir "¿Ha avisado a su jefe? (si/no): "
        Leer respuesta
        Si respuesta = "si" Entonces
            jefeAvisado <- Verdadero
        Sino
            jefeAvisado <- Falso
        FinSi
		
        Escribir "¿El accidente es grave? (si/no): "
        Leer respuesta
        Si respuesta = "si" Entonces
            esAccidenteGrave <- Verdadero
        Sino
            esAccidenteGrave <- Falso
        FinSi
		
        Si esAccidenteGrave Entonces
            Escribir "Traslade al afectado a un centro de salud de emergencia."
        FinSi
		
        Escribir "¿Se presentó la DIAT dentro de las 24 horas? (si/no): "
        Leer respuesta
        Si respuesta = "si" Entonces
            diatPresentada <- Verdadero
        Sino
            diatPresentada <- Falso
            Escribir "La DIAT debe ser presentada por el trabajador o sus familiares."
        FinSi
		
    Sino Si tipoAccidente = "trayecto" Entonces
			Escribir "Ingrese la fecha del accidente (dd/mm/aaaa): "
			Leer fecha
			Escribir "Ingrese la hora del accidente (hh:mm): "
			Leer hora
			Escribir "Ingrese el lugar del accidente: "
			Leer lugar
			Escribir "Describa el accidente: "
			Leer detalleAccidente
			
			Escribir "¿Tiene testigos del accidente? (si/no): "
			Leer respuesta
			Si respuesta = "si" Entonces
				tieneTestigos <- Verdadero
			Sino
				tieneTestigos <- Falso
				Escribir "¿Tiene un parte policial del accidente? (si/no): "
				Leer respuesta
				Si respuesta = "si" Entonces
					partePolicial <- Verdadero
				Sino
					partePolicial <- Falso
					Escribir "Su declaración puede ser suficiente si está bien detallada."
				FinSi
			FinSi
			
			Escribir "¿Se presentó la DIAT dentro de las 24 horas? (si/no): "
			Leer respuesta
			Si respuesta = "si" Entonces
				diatPresentada <- Verdadero
			Sino
				diatPresentada <- Falso
				Escribir "La DIAT debe ser presentada por el trabajador."
			FinSi
		FinSi
		
		Escribir "Reporte del accidente completado."
	FinSi

FinAlgoritmo
