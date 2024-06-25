Algoritmo GestionUsuarios
    Definir opcion, i, j, indice COMO ENTERO;

    
	Definir run, nombre, fechaNacimiento, direccion, telefono, cantidadEmpleados, departamento, funcionUsuario, nombreSuperior, rutModificar, rutEliminar, matriz COMO CADENA;
	
	Dimension matriz[100,10]; // Corrección de la declaración de la matriz
    
    // Inicialización de la matriz
    Para i=1 Hasta 100 Hacer;
        Para j=1 Hasta 10 Hacer;
            matriz[i,j] <- "";  // Instrucción de inicialización corregida
        FinPara; 
    FinPara;
    
    Repetir;
        Escribir "Menú Principal";
        Escribir "1. Registrar usuario";
        Escribir "2. Mostrar usuarios";
        Escribir "3. Contar usuarios por categoría";
        Escribir "4. Modificar usuario";
        Escribir "5. Eliminar usuario";
        Escribir "6. Salir";
        Leer opcion;
        
        Segun opcion Hacer
            Caso 1:
                Escribir "Seleccione el tipo de usuario: 1. Cliente 2. Profesional 3. Administrativo";
                Leer tipoUsuario;
                Segun tipoUsuario Hacer
                    Caso 1:
                        // Cliente
                        Escribir "Ingrese RUN:";
                        Leer run;
                        Escribir "Ingrese Nombre:";
                        Leer nombre;
                        Escribir "Ingrese Fecha de Nacimiento:";
                        Leer fechaNacimiento;
                        Escribir "Ingrese Dirección:";
                        Leer direccion;
                        Escribir "Ingrese Teléfono:";
                        Leer telefono;
                        Escribir "Ingrese Cantidad de Empleados:";
                        Leer cantidadEmpleados;
                        // Buscar índice disponible
                        Para i=1 Hasta 100 Hacer;
                            Si matriz[i,1] = "" Entonces
                                indice <- i;
                                encontrado <- VERDADERO;
                            FinSi;
                        FinPara;
                        // Asignar valores
                        matriz[indice,1] <- run;
                        matriz[indice,2] <- nombre;
                        matriz[indice,3] <- fechaNacimiento;
                        matriz[indice,4] <- direccion;
                        matriz[indice,5] <- telefono;
                        matriz[indice,6] <- cantidadEmpleados;
                        matriz[indice,7] <- "Cliente";
                    Caso 2:
                        // Profesional
                        Escribir "Ingrese RUN:";
                        Leer run;
                        Escribir "Ingrese Nombre:";
                        Leer nombre;
                        Escribir "Ingrese Fecha de Nacimiento:";
                        Leer fechaNacimiento;
                        Escribir "Ingrese Años de Experiencia:";
                        Leer anosExperiencia;
                        Escribir "Ingrese Departamento:";
                        Leer departamento;
                        // Buscar índice disponible
                        Para i=1 Hasta 100 Hacer;
                            Si matriz[i,1] = "" Entonces
                                indice <- i;
                                encontrado <- VERDADERO;
                            FinSi;
                        FinPara;
                        // Asignar valores
                        matriz[indice,1] <- run;
                        matriz[indice,2] <- nombre;
                        matriz[indice,3] <- fechaNacimiento;
                        matriz[indice,8] <- anosExperiencia;
                        matriz[indice,9] <- departamento;
                        matriz[indice,7] <- "Profesional";
                    Caso 3:
                        // Administrativo
                        Escribir "Ingrese RUN:";
                        Leer run;
                        Escribir "Ingrese Nombre:";
                        Leer nombre;
                        Escribir "Ingrese Fecha de Nacimiento:";
                        Leer fechaNacimiento;
                        Escribir "Ingrese Función:";
                        Leer funcionUsuario;
                        Escribir "Ingrese Nombre del Superior:";
                        Leer nombreSuperior;
                        // Buscar índice disponible
                        Para i=1 Hasta 100 Hacer;
                            Si matriz[i,1] = "" Entonces
                                indice <- i;
                                encontrado <- VERDADERO;
                            FinSi;
                        FinPara;
                        // Asignar valores
                        matriz[indice,1] <- run;
                        matriz[indice,2] <- nombre;
                        matriz[indice,3] <- fechaNacimiento;
                        matriz[indice,10] <- funcionUsuario;
                        matriz[indice,11] <- nombreSuperior;
                        matriz[indice,7] <- "Administrativo";
                    De otro modo:
                        Escribir "Opción no válida.";
                FinSegun;
            Caso 2:
                // Mostrar Usuarios
                Escribir "Listado de Usuarios Registrados:";
                Para i=1 Hasta 100 Hacer;
                    Si matriz[i,1] <> "" Entonces
                        Para j=1 Hasta 10 Hacer;
                            Si matriz[i,j] <> "" Entonces
                                Escribir matriz[i,j], " ";
                            FinSi;
                        FinPara;
                        Escribir "";
                    FinSi;
                FinPara;
            Caso 3:
                // Contar Usuarios por Categoría
                Definir contadorClientes, contadorProfesionales, contadorAdministrativos COMO ENTERO;
                contadorClientes <- 0;
                contadorProfesionales <- 0;
                contadorAdministrativos <- 0;
                Para i=1 Hasta 100 Hacer;
                    Si matriz[i,7] = "Cliente" Entonces
                        contadorClientes <- contadorClientes + 1;
                    FinSi;
                    Si matriz[i,7] = "Profesional" Entonces
                        contadorProfesionales <- contadorProfesionales + 1;
                    FinSi;
                    Si matriz[i,7] = "Administrativo" Entonces
                        contadorAdministrativos <- contadorAdministrativos + 1;
                    FinSi;
                FinPara;
                Escribir "Clientes: ", contadorClientes;
                Escribir "Profesionales: ", contadorProfesionales;
                Escribir "Administrativos: ", contadorAdministrativos;
            Caso 4:
                // Modificar Usuario
                Escribir "Ingrese el RUN del usuario a modificar:";
                Leer rutModificar;
                Para i=1 Hasta 100 Hacer;
                    Si matriz[i,1] = rutModificar Entonces
                        Escribir "Ingrese nuevos datos";
                        Escribir "Ingrese Nombre:";
                        Leer nombre;
                        Escribir "Ingrese Fecha de Nacimiento:";
                        Leer fechaNacimiento;
                        Si matriz[i,7] = "Cliente" Entonces
                            Escribir "Ingrese Dirección:";
                            Leer direccion;
                            Escribir "Ingrese Teléfono:";
                            Leer telefono;
                            Escribir "Ingrese Cantidad de Empleados:";
                            Leer cantidadEmpleados;
                            matriz[i,2] <- nombre;
                            matriz[i,3] <- fechaNacimiento;
                            matriz[i,4] <- direccion;
                            matriz[i,5] <- telefono;
                            matriz[i,6] <- cantidadEmpleados;
                        FinSi;
                        Si matriz[i,7] = "Profesional" Entonces
                            Escribir "Ingrese Años de Experiencia:";
                            Leer anosExperiencia;
                            Escribir "Ingrese Departamento:";
                            Leer departamento;
                            matriz[i,2] <- nombre;
                            matriz[i,3] <- fechaNacimiento;
                            matriz[i,8] <- anosExperiencia;
                            matriz[i,9] <- departamento;
                        FinSi;
                        Si matriz[i,7] = "Administrativo" Entonces
                            Escribir "Ingrese Función:";
                            Leer funcionUsuario;
                            Escribir "Ingrese Nombre del Superior:";
                            Leer nombreSuperior;
                            matriz[i,2] <- nombre;
                            matriz[i,3] <- fechaNacimiento;
                            matriz[i,10] <- funcionUsuario;
                            matriz[i,11] <- nombreSuperior;
                        FinSi;
                        Escribir "Usuario modificado.";
                    FinSi;
                FinPara;
            Caso 5:
                // Eliminar Usuario
                Escribir "Ingrese el RUN del usuario a eliminar:";
                Leer rutEliminar;
                Para i=1 Hasta 100 Hacer;
                    Si matriz[i,1] = rutEliminar Entonces
                        Para j=i Hasta 99 Hacer;
                            Para k=1 Hasta 10 Hacer;
                                matriz[j,k] <- matriz[j+1,k];
                            FinPara;
                        FinPara;
                        Escribir "Usuario eliminado.";
					encotrado <- VERDADERO;
                    FinSi;
                FinPara;
            Caso 6:
                Escribir "Saliendo del programa...";
				encotrado <- VERDADERO;
            De otro modo:
                Escribir "Opción no válida.";
        FinSegun;
    Hasta Que opcion = 6;
FinAlgoritmo
