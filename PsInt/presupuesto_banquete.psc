Algoritmo presupuesto_banquete
    Definir numero_personas Como Entero;
    Definir costo_por_persona, presupuesto_total Como Real;
    
    Escribir "Ingrese el número de personas:";
    Leer numero_personas;
    
    Si numero_personas > 300 Entonces
        costo_por_persona <- 4000;
        presupuesto_total <- numero_personas * costo_por_persona;
        Escribir "El presupuesto total para ", numero_personas, " personas es: $", presupuesto_total;
    Sino
        Escribir "El número de personas debe ser mayor a 300 para usar este cálculo.";
    FinSi
    
FinAlgoritmo
