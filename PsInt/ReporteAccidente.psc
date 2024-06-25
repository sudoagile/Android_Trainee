Algoritmo ReporteAccidente
	
    Definir tipoAccidente, jefeAvisado, diatPresentada, esAccidenteGrave, tieneTestigos, partePolicial Como Caracter
    Definir detalleAccidente, fecha, hora, lugar, respuesta Como Caracter
	
    jefeAvisado <- "no"
    diatPresentada <- "no"
    esAccidenteGrave <- "no"
    tieneTestigos <- "no"
    partePolicial <- "no"
    fecha <- ""
    hora <- ""
    lugar <- ""
    detalleAccidente <- ""
	
    Escribir "Ingrese el tipo de accidente (trabajo/trayecto): "
    Leer tipoAccidente
	
    Si tipoAccidente = "trabajo" Entonces
        Escribir "¿Ha avisado a su jefe? (si/no): "
        Leer respuesta
        Si respuesta = "si" Entonces
            jefeAvisado <- "si"
        Sino
            jefeAvisado <- "no"
        FinSi
		
        Escribir "¿El accidente es grave? (si/no): "
        Leer respuesta
        Si respuesta = "si" Entonces
            esAccidenteGrave <- "si"
        Sino
            esAccidenteGrave <- "no"
        FinSi
		
        Si esAccidenteGrave = "si" Entonces
            Escribir "Traslade al afectado a un centro de salud de emergencia."
        FinSi
		
        Escribir "¿Se presentó la DIAT dentro de las 24 horas? (si/no): "
        Leer respuesta
        Si respuesta = "si" Entonces
            diatPresentada <- "si"
        Sino
            diatPresentada <- "no"
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
				tieneTestigos <- "si"
			Sino
				tieneTestigos <- "no"
				Escribir "¿Tiene un parte policial del accidente? (si/no): "
				Leer respuesta
				Si respuesta = "si" Entonces
					partePolicial <- "si"
				Sino
					partePolicial <- "no"
					Escribir "Su declaración puede ser suficiente si está bien detallada."
				FinSi
			FinSi
			
			Escribir "¿Se presentó la DIAT dentro de las 24 horas? (si/no): "
			Leer respuesta
			Si respuesta = "si" Entonces
				diatPresentada <- "si"
			Sino
				diatPresentada <- "no"
				Escribir "La DIAT debe ser presentada por el trabajador."
			FinSi
		FinSi
	FinSi
	
	Escribir "Reporte del accidente completado."
	
FinAlgoritmo