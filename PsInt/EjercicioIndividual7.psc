
Algoritmo CalculoHorasYSueldo
	
Definir numTrabajadores, i, dia, totalHorasSemana, horas, valorPorHora, sueldoSemanal Como Real;
Definir nombre Como Cadena;
Definir edad Como Entero;

Escribir "Ingrese el número de trabajadores:";
Leer numTrabajadores;

Escribir "Ingrese el valor a pagar por hora de trabajo:";
Leer valorPorHora;

Para i = 1 Hasta numTrabajadores Con Paso 1 Hacer
    Escribir "Ingrese el nombre del trabajador ", i, ":";
    Leer nombre;
    
    Escribir "Ingrese la edad del trabajador ", i, ":";
    Leer edad;
    
    totalHorasSemana <- 0;
    
    Para dia = 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese las horas trabajadas el día ", dia, ":";
        Leer horas;
        totalHorasSemana <- totalHorasSemana + horas;
    FinPara;
    
    sueldoSemanal <- totalHorasSemana * valorPorHora;
    
    Escribir "Trabajador: ", nombre;
    Escribir "Edad: ", edad;
    Escribir "Total de horas trabajadas en la semana: ", totalHorasSemana;
    Escribir "Sueldo semanal: ", sueldoSemanal;
FinPara;

FinAlgoritmo
