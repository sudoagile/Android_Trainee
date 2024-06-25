Algoritmo main
	
	definir tbl_usuarios, id Como Caracter;
	definir num_fls_tbl, num_cols_tbl como Entero;
	definir fin_dato_comun  Como Entero;
	definir dim_col_clientes, dim_col_profesionales, dim_col_administrativos Como Entero;
	definir ind_cte, ind_prof, ind_adm Como Entero;
	definir check como Logico;
	definir tipo como entero;
	definir num_usuarios Como Entero;
	definir num Como Entero; //usada en opcion 1
	definir idnum como entero;
	
	ind_cte:= 5; ind_prof := 8; ind_adm:=10;
	check = falso;
	
	
	Repetir
		Escribir "Ingresar numero de usuarios (max 100, min 3, defecto 3)"; 
		Leer num_usuarios;
		si num_usuarios = 0 Entonces
			num_usuarios :=3;
		FinSi
	Hasta que num_usuarios >= 3 y num_usuarios < 100
	
	//num_usuarios :=2;
	
	// fin definiciones
	num_fls_tbl := num_usuarios + 2; // numero tbl_usuarios, incluye ultimo registro con *
	num_cols_tbl := 12; // numero de campos en tbl_usuarios
	fin_dato_comun := 4; // Numero de campos comunes, Nombre, rut, etc.
	
	dim_col_clientes := 3;
	dim_col_profesionales := 2;
	dim_col_administrativos:= 2;
	// Array
	dimensionar tbl_usuarios[num_fls_tbl, num_cols_tbl];
	rellenarTbl_usuarios(tbl_usuarios, num_fls_tbl, num_cols_tbl);

	tbl_usuarios[0,0] := "ID:";
	tbl_usuarios[0,1] := "Nombre: ";
	tbl_usuarios[0,2] := "Fecha Nac: ";
	tbl_usuarios[0,3] := "Rut: ";
	tbl_usuarios[0,4] := "Tipo -> (Clte = 1, Prof. = 2, Admin. = 3): ";
	//Clientes
	tbl_usuarios[0,5] := "Dirección: ";
	tbl_usuarios[0,6] := "Teléfono: ";
	tbl_usuarios[0,7] := "N° empleados: ";
	//Profesionales
	tbl_usuarios[0,8] := "Años de experiencia: ";
	tbl_usuarios[0,9] := "Departamento: ";
	//Administrativos
	tbl_usuarios[0,10] := "Función: ";
	tbl_usuarios[0,11] := "Nombre de superior: ";
	definir frecuencias Como Entero;
	Dimension frecuencias[3];
	frecuencias[0] = 0;
	frecuencias[1] = 0;
	frecuencias[2] = 0;
	//Inicializamos la tabla con * en la posición del ultimo actual
	tbl_usuarios[1, 0] = "*";
	
	definir posicion_cursor Como Entero;
	definir variables Como Entero;
	dimension variables[9];
	variables[0] = num_usuarios;
	variables[1] = fin_dato_comun;
	variables[2] = num_cols_tbl;
	variables[3] = dim_col_clientes;
	variables[4] = dim_col_profesionales;
	variables[5] = dim_col_administrativos;
	variables[6] = ind_cte;
	variables[7] = ind_prof;
	variables[8] = ind_adm;
		
	Definir OP Como Entero;
	Repetir
		// mostrar menu
		Limpiar Pantalla;
		
		Escribir " <<  Menu de gestión de usuarios  >> ";
		Escribir " ";
		Escribir "   1. Registrar varios usuarios";
		Escribir "   2. Registrar un  usuario";
		Escribir "   3. Mostrar usuarios";
		Escribir "   4. Contar usuarios por categoria";
		Escribir "   5. Modificar usuarios";
		Escribir "   6. Eliminar usuario";
		Escribir "   7. Salir";
		// ingresar una opcion
		Escribir "Elija una opción (1-7): ";
		Leer OP;
		// procesar esa opción
		Segun OP Hacer
			1:  // 1. Registrar varios usuarios";
				Borrar Pantalla;
				Repetir
					Escribir "Ingresar numero de usuarios a registrar: "; 
					posicion_cursor = indiceUltimoRegistro(tbl_usuarios);
					Escribir "(" + ConvertirATexto(num_usuarios - (posicion_cursor-1)) + " registros disponibles)";
					leer num;
				hasta que num <= num_usuarios - (posicion_cursor-1)
	
				Borrar Pantalla;
				registroUsuarios(tbl_usuarios, num, fin_dato_comun, dim_col_clientes, dim_col_profesionales, dim_col_administrativos, ind_cte, ind_prof, ind_adm, frecuencias);
				Borrar Pantalla;
				
			2: 	//2. Registrar un  usuario";
				Borrar Pantalla;
				posicion_cursor = indiceUltimoRegistro(tbl_usuarios); num = 1;
				Si num <= num_usuarios - (posicion_cursor-1) Entonces
			
					registroUsuarios(tbl_usuarios, num, fin_dato_comun, dim_col_clientes, dim_col_profesionales, dim_col_administrativos, ind_cte, ind_prof, ind_adm, frecuencias);
				
				sino 
					Escribir "(" + ConvertirATexto(num_usuarios - (posicion_cursor-1)) + " registros disponibles)";
				finsi
				
			3:	//  3. Mostrar usuarios";
				Borrar Pantalla;
				posicion_cursor = indiceUltimoRegistro(tbl_usuarios);
				si posicion_cursor > 1 Entonces
					mostrarRegistros(tbl_usuarios, fin_dato_comun, dim_col_clientes, dim_col_profesionales,dim_col_administrativos, ind_cte, ind_prof, ind_adm);
				
				SiNo
					Escribir "No hay registros para mostrar";
				FinSi
				
			4:  // 4. Contar usuarios por categoria";
				Borrar Pantalla;
				posicion_cursor = indiceUltimoRegistro(tbl_usuarios);
				si posicion_cursor > 1 Entonces
					contarUsuariosPorCategoria(frecuencias);
				SiNo
					Escribir "No hay registros para contar";
				FinSi
				
			5:  //  5. Modificar usuarios";
				posicion_cursor = indiceUltimoRegistro(tbl_usuarios);
				Borrar Pantalla;
				si posicion_cursor > 1 Entonces
					Repetir
						mostrarRutNombre(tbl_usuarios);
						leer id;	
						check = checkID(id, tbl_usuarios);
					hasta que check = Verdadero 
					modificarUsuario(tbl_usuarios, id, fin_dato_comun, dim_col_clientes, dim_col_profesionales,dim_col_administrativos, ind_cte, ind_prof, ind_adm);
				SiNo
					Escribir "No hay registros ingresados";
				FinSi
			6:   //6. Eliminar usuario";
				Borrar Pantalla;
				posicion_cursor = indiceUltimoRegistro(tbl_usuarios);
				si posicion_cursor > 1 Entonces
					Repetir
						mostrarRutNombre(tbl_usuarios);
						Escribir Sin Saltar"Ingrese ID: "; 
						leer id;
						check = checkID(id, tbl_usuarios);
					Hasta Que check= Verdadero
					idnum = ConvertirANumero(id);
					moveUp(tbl_usuarios, variables, posicion_cursor, idnum );
				SiNo
					Escribir "No hay registros ingresados";
				FinSi
			
			7:	
				Borrar Pantalla;
				Escribir "Cerrando la sesión de fecha: " ;
			De otro modo:
				Escribir "Opción no válida";
		FinSegun
		Escribir "Presione enter para continuar";
		Esperar Tecla;
	Hasta Que OP=7
FinAlgoritmo

SubProceso rellenarTbl_usuarios(tbl_usuarios, filas, cols)
	definir fila, col Como Entero;
	
	Para fila = 1 Hasta filas -1 Hacer
		Para col=0 Hasta cols-1 Hacer
			tbl_usuarios[fila, col] = ".";
		FinPara

	FinPara
FinSubProceso

SubProceso moveUP ( tbl_usuarios, variables, siguienteID, anteriorID )
	Definir i Como Entero;
	i = 0;
	si siguienteID > anteriorID  Entonces
		Para i = 0 Hasta variables[2] - 1 Hacer
			tbl_usuarios[anteriorID, i] = tbl_usuarios[anteriorID +1, i] ;
		FinPara
		moveUP( tbl_usuarios, variables, siguienteID, anteriorID + 1);
	SiNo
		Escribir "Usuario eliminado correctamente. Verifique en opcion 3.";
	FinSi
	//ultimo= indiceUltimoRegistro(tbl_usuarios);
	tbl_usuarios[siguienteID - 1, 0] = "*";
FinSubProceso
//SubProceso copiaRegistro ( tbl_usuarios, variables, siguienteID, anteriorID )
//	Definir boolean Como Logico;
//	Definir i Como Entero;
//	i = 0;
//	Para i = 0 Hasta variables[2] - 1 Hacer
//		Escribir " lll ";
//		Escribir i;
//		tbl_usuarios[anteriorID, i] = tbl_usuarios[siguienteID, i] ;
//	FinPara
//FinSubProceso

//SubProceso eliminarRegistro( tbl_usuarios, variables, id ) 
//	Definir ultimo, i Como Entero;
//	Definir movimientos como Entero;
//	i = 0;
//	ultimo= indiceUltimoRegistro(tbl_usuarios);
//	movimientos = (ultimo - 1) - ConvertirANumero(id);
//	Para i = ConvertirANumero(id) Hasta movimientos Hacer
//		//copiaRegistro(tbl_usuarios, variables, i+1, i  );
//	FinPara
//	//actualiza cursor
//	tbl_usuarios[ultimo - 1, 0] = "*";
//FinSubProceso

SubProceso nultimo <- indiceUltimoRegistro ( tbl_usuarios )
	Definir i como entero;
	Definir nultimo como entero;
	i = 0;
	Repetir
		i = i+1;
		nultimo = i;
	Hasta Que tbl_usuarios[i,0] = "*"
FinSubProceso

SubProceso check <- checkID( id, tbl_usuarios )
	Definir check Como Logico;
	Definir fila Como Entero;
	Definir num_registrados como entero;
	// -----------------------------------
	fila = 1;
	check = falso;
	Mientras tbl_usuarios[fila, 0] <> "*" y check = falso Hacer
		check = (tbl_usuarios[fila,0] = id);
		fila = fila + 1;
	FinMientras
FinSubProceso

SubProceso mostrarRutNombre(tbl_usuarios)
	definir fila como entero;
	definir num_registrados como entero;
	definir id Como Entero;
	Escribir "Seleccione el ID que quiere modificar/eliminar";
	Escribir "============================================== ";
	fila = 1;
	Mientras tbl_usuarios[fila, 0] <> "*" hacer
		Escribir sin saltar tbl_usuarios[0,0]; 
		Escribir Sin Saltar tbl_usuarios[fila, 0] + " ";
		Escribir Sin Saltar tbl_usuarios[0, 3] + tbl_usuarios[fila, 3];
		Escribir " " + tbl_usuarios[0, 1] + tbl_usuarios[fila, 1];
		fila = fila + 1;
	fin mientras
	
FinSubProceso

SubProceso modificarUsuario(tbl_usuarios, id, fin_dato_comun, dim_col_clientes, dim_col_profesionales,dim_col_administrativos, ind_cte, ind_prof, ind_adm)
	Definir col Como Entero;
	definir tipo Como Entero;
	Definir operacion Como Logico;
	para col = 1 hasta fin_dato_comun Hacer
		leerDato(tbl_usuarios, id, col);
		//Escribir tbl_usuarios[0, col] ;
		//leer tbl_usuarios[id, col] ;
	FinPara
	tipo := ConvertirANumero(tbl_usuarios[id,4]);
	operacion := verdadero;
	Segun tipo Hacer
		1:  //clientes
			datosAdicionales(tbl_usuarios, id, dim_col_clientes, ind_cte, operacion);
			Borrar Pantalla;
		2: // profesionales
			
			datosAdicionales(tbl_usuarios, id, dim_col_profesionales, ind_prof, operacion)  ;
			Borrar Pantalla;
		3:  // administrativos
			datosAdicionales(tbl_usuarios, id, dim_col_administrativos, ind_adm, operacion);
			Borrar Pantalla;
		De Otro Modo:
	Fin Segun
	
FinSubProceso

SubProceso registroUsuarios(tbl_usuarios, num_registros_crear, fin_dato_comun, dim_col_clientes, dim_col_profesionales, dim_col_administrativos, ind_cte, ind_prof, ind_adm, frecuencias)
	Definir fila, col Como Entero;
	definir tipo Como Entero;
	definir id Como Caracter;
	Definir operacion Como Logico;
	definir posicion_cursor Como Entero;
	posicion_cursor = indiceUltimoRegistro(tbl_usuarios);
	//posicion_curor equivale a la posición 0, por tanto igual hay que restar 1
	Escribir posicion_cursor;
	para fila <- posicion_cursor hasta (posicion_cursor + num_registros_crear) - 1 Hacer
		id := ConvertirATexto(fila); 
		tbl_usuarios[fila, 0] := id;
		Escribir "Registro N° [", id , "]";
		
		para col <- 1 Hasta fin_dato_comun  Hacer;
			Si col = 4 Entonces
				Repetir
					Escribir Sin Saltar tbl_usuarios[0,col];
					leer tbl_usuarios[fila,col] ;
				Hasta que (tbl_usuarios[fila,col] = "1" o  tbl_usuarios[fila,col] = "2" o  tbl_usuarios[fila,col] = "3")
				tipo := ConvertirANumero(tbl_usuarios[fila,4] );
				operacion := verdadero;
				Segun tipo Hacer
					1:  //clientes
						frecuencias[0] = frecuencias[0] + 1;
						datosAdicionales(tbl_usuarios, id, dim_col_clientes, ind_cte, operacion);
						Borrar Pantalla;
					2: // profesionales
						frecuencias[1] = frecuencias[1] + 1;
						datosAdicionales(tbl_usuarios, id, dim_col_profesionales, ind_prof, operacion)  ;
						Borrar Pantalla;
					3:  // administrativos
						frecuencias[2] = frecuencias[2] + 1;
						datosAdicionales(tbl_usuarios, id, dim_col_administrativos, ind_adm, operacion);
						Borrar Pantalla;
					De Otro Modo:
				FinSegun
			SiNo
				//Escribir Sin Saltar tbl_usuarios[0,col];
				leerDato(tbl_usuarios, id, col);
			FinSi
		FinPara
	FinPara
	//Actualiza el cursor del ultimo usuario registrado
	tbl_usuarios[posicion_cursor + num_registros_crear, 0] = "*";
	
FinSubProceso

SubProceso leerDato (tbl_usuarios, id, col)
	definir check Como Logico;
	check = es_col_ob(col);
	si check = Verdadero Entonces
		Repetir
			Escribir Sin Saltar tbl_usuarios[0,col];
			leer tbl_usuarios[id,col] ;
		Hasta Que Longitud(tbl_usuarios[id, col]) >0
	SiNo
		Escribir Sin Saltar tbl_usuarios[0,col];
		leer tbl_usuarios[id,col] ;
	FinSi
FinSubProceso

SubProceso check <- es_col_ob(col)
	definir campos_obligatorios Como Entero;
	dimension campos_obligatorios[6];
	definir check como logico;
	definir i Como Entero;
	campos_obligatorios[0]= 1;
	campos_obligatorios[1]= 3;
	campos_obligatorios[2]= 5;
	campos_obligatorios[3]= 6;
	campos_obligatorios[4]= 9;
	campos_obligatorios[5]= 10;
	i=0;
	check = falso;
	Mientras i < 6 y (check = Falso) Hacer
		check = (campos_obligatorios[i] = col );
		i = i+1;
	FinMientras
FinSubProceso

SubProceso contarUsuariosPorCategoria(frecuencias)
	Escribir "N° Usuarios de tipo Cliente :       " + ConvertirATexto(frecuencias[0]);
	Escribir "N° Usuarios de tipo Profesional:    " + ConvertirATexto(frecuencias[1]);
	Escribir "N° Usuarios de tipo Administrativo :" + ConvertirATexto(frecuencias[2]);
FinSubProceso

SubProceso mostrarRegistros(tbl_usuarios, fin_dato_comun, dim_col_clientes, dim_col_profesionales,dim_col_administrativos, ind_cte, ind_prof, ind_adm)
	Definir fila, col, tipo Como Entero;
	Definir id Como Caracter;
	Definir operacion Como Logico;
	
	tipo =0;
	Escribir "Mostrando registros almacenados";
	Escribir "===============================";
	
	fila =1;
	Mientras tbl_usuarios[fila, 0] <> "*" hacer; //paramos al encontrar cursor del primero registro vacio
		id :=tbl_usuarios[fila,0] ;	Escribir "(" + ConvertirATexto(fila) + ") Registro N° [", id, "]";
		operacion = verdadero;
		para col <- 1 Hasta fin_dato_comun Hacer;
			Escribir Sin Saltar tbl_usuarios[0,col]; // escribe etiqueta 
			Escribir tbl_usuarios[fila,col] ;
			// Al leer la columna "tipo" de usuario
			si col= 4 Entonces
				tipo = ConvertirANumero(tbl_usuarios[fila,4]); // columna 4 es TIPO de usuario
				//operación falso -> mostrar 
				operacion = falso;
				Segun tipo Hacer
					1:
						Escribir 'Categoría: Cliente' ;
						datosAdicionales(tbl_usuarios, id, dim_col_clientes, ind_cte, operacion);
						
					2:
						Escribir "Categoría: Profesional";
						datosAdicionales(tbl_usuarios, id, dim_col_profesionales, ind_prof, operacion)  ;
						
					3:
						Escribir "Categoría: Administrativo";
						datosAdicionales(tbl_usuarios, id, dim_col_administrativos, ind_adm, operacion);
						
						
					De Otro Modo:
						
				Fin Segun
			FinSi
		FinPara
		Escribir "____________________"	;
		fila = fila +1; //avanza un registro
	FinMientras
	
	Esperar Tecla; 
	
FinSubProceso

// Ingresar o mostrar datos adicionales por cada perfil de usuario
SubAlgoritmo  datosAdicionales(tbl_usuarios, id, dim_col, indice_col, operacion)
		definir col Como Entero; col:= 0;
	
	si operacion Entonces
		Escribir "Ingrese datos adicionales";
		Escribir "=========================";
	FinSi
		
	// verdadero pide los campos; 
	//falso, solamente los muestra.
	Para col <- indice_col hasta indice_col + dim_col -1  hacer
		si operacion Entonces
			leerDato(tbl_usuarios, id, col);
		SiNo
			//mostrar, campo: valor
			Escribir sin saltar tbl_usuarios[0,col]; Escribir tbl_usuarios[id,col];
		FinSi
	Fin Para
Fin SubAlgoritmo
