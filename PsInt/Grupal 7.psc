// Validaciones ok
// funcion mostrar usuarios ok
// funcion contarUsuariosPorCategoria ok

SubProceso user <- registroUsuarios 
	Definir user Como Entero;
	Escribir "Ingresar numero de usuarios (max 100, min 3, defecto 3)"; 
	Leer user;
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
		si campos_obligatorios[i] = col Entonces
			check = Verdadero;
		FinSi
		i = i+1;
	FinMientras
FinSubProceso

Algoritmo grupal_07
	definir fila, col como enteros;
	definir tbl_usuarios, id Como Caracter;
	definir dim_fila_usuarios, fin_dato_comun  Como Entero;
	definir dim_col_usuarios, dim_col_clientes, dim_col_profesionales, dim_col_administrativos Como Entero;
	definir tipo como entero;
	definir num_usuarios Como Entero;
	Definir check, lee Como Logico;
	check = falso;
	
	pantallaInicial();
	Repetir  //registroUsuarios
		
		num_usuarios = registroUsuarios();
		
        si num_usuarios = 0 Entonces
			num_usuarios :=3;
		FinSi
    Hasta que num_usuarios >= 3 y num_usuarios < 100
	
	Borrar Pantalla;
	// fin definiciones
	dim_fila_usuarios := num_usuarios + 1; // numero tbl_usuarios
	dim_col_usuarios := 12; // numero de campos en array comun
	fin_dato_comun := 4;
	
	Definir ind_cte, ind_prof, ind_adm Como Entero;
	ind_cte:= 5; ind_prof := 8; ind_adm:=10;
	dim_col_clientes := 3;
	dim_col_profesionales := 2;
	dim_col_administrativos:= 2;
	// Arrays
	dimensionar tbl_usuarios[dim_fila_usuarios, dim_col_usuarios];
	
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
	
	// Ingresar tbl_usuarios, DATOS COMUNES
	Escribir "Registre al menos un usuario de cada tipo:";
	para fila <- 1 hasta dim_fila_usuarios-1 Hacer
		id := ConvertirATexto(fila); tbl_usuarios[fila, 0] := id;
		Escribir "Registro N° [", id , "]";
		
		para col <- 1 Hasta fin_dato_comun  Hacer;
			leerDato(tbl_usuarios, id, col);
			// Al leer "tipo" de usuario INGRESAMOS los datos específicos por tipo de usuario
			
			si col= 4 Entonces
				tipo := ConvertirANumero(tbl_usuarios[fila,4]);
				lee := verdadero;
				
				Segun tipo Hacer
					1:  //clientes
						frecuencias[0] = frecuencias[0] + 1;
						datosAdicionales(tbl_usuarios, id, dim_col_clientes, ind_cte, lee);
						Borrar Pantalla;
					2: // profesionales
						frecuencias[1] = frecuencias[1] + 1;
						datosAdicionales(tbl_usuarios, id, dim_col_profesionales, ind_prof, lee)  ;
						Borrar Pantalla;
					3:  // administrativos
						frecuencias[2] = frecuencias[2] + 1;
						datosAdicionales(tbl_usuarios, id, dim_col_administrativos, ind_adm, lee);
						Borrar Pantalla;
					De Otro Modo:
						
				Fin Segun
				
			FinSi
		FinPara
		
		
	FinPara
	Borrar Pantalla;
	Escribir "Para mostrar registros presione m";
	Borrar Pantalla;
	Esperar Tecla;
	mostrarUsuarios(tbl_usuarios, dim_fila_usuarios, fin_dato_comun, dim_col_clientes,	dim_col_profesionales,dim_col_administrativos, ind_cte, ind_prof, ind_adm);
	// Rutina para mostrar todos los datos almacenados
	contarUsuariosPorCategoria(frecuencias);
	
FinAlgoritmo
SubProceso contarUsuariosPorCategoria(frecuencias)
	Escribir "N° Usuarios de tipo Cliente :       " + ConvertirATexto(frecuencias[0]);
	Escribir "N° Usuarios de tipo Profesional:    " + ConvertirATexto(frecuencias[1]);
	Escribir "N° Usuarios de tipo Administrativo :" + ConvertirATexto(frecuencias[2]);
FinSubProceso

SubProceso mostrarUsuarios(tbl_usuarios, dim_fila_usuarios, fin_dato_comun, dim_col_clientes, dim_col_profesionales,dim_col_administrativos, ind_cte, ind_prof, ind_adm)
	Definir fila, col, tipo Como Entero;
	Definir id Como Caracter;
	Definir lee Como Logico;
	
	fila =0; tipo =0;
	Escribir "Mostrando registros almacenados";
	Escribir "===============================";
	para fila <- 1 hasta dim_fila_usuarios-1 Hacer;
		id :=tbl_usuarios[fila,0] ;
		Escribir "Registro N° [", id, "]";
		
		para col <- 1 Hasta fin_dato_comun Hacer;
			Escribir Sin Saltar tbl_usuarios[0,col];
			Escribir tbl_usuarios[fila,col] ;
			// Al leer la columna "tipo" de usuario
			si col= 4 Entonces
				tipo = ConvertirANumero(tbl_usuarios[fila,4]);
				lee := Falso;
				Segun tipo Hacer
					1:
						Escribir 'Categoría: Cliente' ;
						datosAdicionales(tbl_usuarios, id, dim_col_clientes, ind_cte, lee);
						
					2:
						Escribir "Categoría: Profesional";
						datosAdicionales(tbl_usuarios, id, dim_col_profesionales, ind_prof, lee)  ;
						
					3:
						Escribir "Categoría: Administrativo";
						datosAdicionales(tbl_usuarios, id, dim_col_administrativos, ind_adm, lee);
						
						
					De Otro Modo:
						
				Fin Segun
			FinSi
		FinPara
		Escribir "____________________"	;
	FinPara
FinSubProceso

// Ingresar o mostrar datos adicionales por cada perfil de usuario
SubAlgoritmo  datosAdicionales(tbl_usuarios, id, dim_col, indice_col, lee)
	// lee = falso -- muestra
	// lee = verdadero --- pide mas datos
	definir col Como Entero; col:= 0;
	
	si lee = verdadero Entonces
		Escribir "Ingrese datos adicionales";
		Escribir "=========================";
	FinSi
	
	Para col <- indice_col hasta indice_col + dim_col -1  hacer
		si lee = Verdadero Entonces
			leerDato(tbl_usuarios, id, col);
		SiNo
			//mostrar, campo: valor
			Escribir sin saltar tbl_usuarios[0,col]; Escribir tbl_usuarios[id,col];
		FinSi
	Fin Para
Fin SubAlgoritmo

//===================================================================================
//Pantalla de inicio
SubAlgoritmo pantallaInicial
	Definir i, j, max, espacios como enteros;
	definir texto, subtitle, subtitle2 Como Caracter;
	texto = "Kiding software, presenta:";
	subtitle = "EJERCICIO GRUPAL N° 7";
	subtitle2 = "<<  Grupo 6  >>";
	max = Longitud(texto);
	j = 0;
	Para i=0 Hasta max-1 Hacer
		Escribir Sin Saltar SubCadena(texto,i,i+1);
		esperar 130 Milisegundos; Borrar Pantalla;
		Para j=0 Hasta i Hacer
			Escribir Sin Saltar " ";
		FinPara
	FinPara
	Escribir "";
	centrar(subtitle); centrar(subtitle2); centrar("(presione enter)");
	Esperar Tecla; Borrar Pantalla;
FinSubAlgoritmo
SubAlgoritmo centrar (txt)
	Definir espacios, i Como Entero;
	espacios = redon((58 - Longitud(txt)) / 2);
	Para i= 0 Hasta espacios Hacer
		Escribir Sin Saltar" ";
	FinPara
	Escribir txt;
FinSubAlgoritmo
