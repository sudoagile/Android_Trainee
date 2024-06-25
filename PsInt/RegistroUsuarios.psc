Proceso RegistroUsuarios
    Definir cantidad_usuarios Como Entero;
    Definir i, tipo_usuario Como Entero;
    Definir nombre, fecha_nacimiento, RUN, direccion, telefono, empleados, experiencia, departamento, funcion_administrativa, superior Como Cadena;
	
    Escribir "Ingrese la cantidad de usuarios a registrar: ";
    Leer cantidad_usuarios;
	
    Para i <- 1 Hasta cantidad_usuarios Hacer;
        Escribir "Ingrese el nombre del usuario ", i, ": ";
        Leer nombre;
        Escribir "Ingrese la fecha de nacimiento del usuario (DD/MM/AAAA) ", i, ": ";
        Leer fecha_nacimiento;
        Escribir "Ingrese el RUN del usuario ", i, ": ";
        Leer RUN;
        Escribir "Seleccione el tipo de usuario (1: Cliente, 2: Profesional, 3: Administrativo): ";
        Leer tipo_usuario;
		
        Segun tipo_usuario Hacer
            1: // Cliente
                Escribir "Ingrese la direcci�n del cliente: ";
                Leer direccion;
                Escribir "Ingrese el tel�fono del cliente: ";
                Leer telefono;
                Escribir "Ingrese la cantidad de empleados: ";
                Leer empleados;
                Escribir "Datos del Cliente registrado:";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fecha_nacimiento;
                Escribir "RUN: ", RUN;
                Escribir "Direcci�n: ", direccion;
                Escribir "Tel�fono: ", telefono;
                Escribir "Cantidad de empleados: ", empleados;
				
            2: // Profesional
                Escribir "Ingrese los a�os de experiencia del profesional: ";
                Leer experiencia;
                Escribir "Ingrese el departamento del profesional: ";
                Leer departamento;
                Escribir "Datos del Profesional registrado:";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fecha_nacimiento;
                Escribir "RUN: ", RUN;
                Escribir "A�os de experiencia: ", experiencia;
                Escribir "Departamento: ", departamento;
				
            3: // Administrativo
                Escribir "Ingrese la funci�n del administrativo: ";
                Leer funcion_administrativa;
                Escribir "Ingrese el nombre del superior del administrativo: ";
                Leer superior;
                Escribir "Datos del Administrativo registrado:";
                Escribir "Nombre: ", nombre;
                Escribir "Fecha de Nacimiento: ", fecha_nacimiento;
                Escribir "RUN: ", RUN;
                Escribir "Funci�n: ", funcion_administrativa;
                Escribir "Nombre del superior: ", superior;
				
            De Otro Modo:
                Escribir "Tipo de usuario no v�lido.";
        FinSegun;
		
        Escribir "------------------------------------";
    FinPara;
	
    Escribir "Registro de usuarios completado.";
FinProceso

