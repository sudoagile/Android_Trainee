package ingresarnumero;

import java.util.Scanner;

public class IngresarNumero {
    public static void main(String[] args) {
        Scanner escaner = new Scanner(System.in);
        System.out.print("Ingrese un número: ");
        
        // Verifica si la entrada es un número entero
        if (escaner.hasNextInt()) {
            int numero = escaner.nextInt();
            
            // Determina si el número es positivo, negativo o cero
            if (numero > 0) {
                System.out.println("El número es positivo.");
            } else if (numero < 0) {
                System.out.println("El número es negativo.");
            } else {
                System.out.println("El número es cero.");
            }
        } else {
            System.out.println("Por favor, ingrese un número válido.");
        }

        // Cierra el escáner
        escaner.close();
    }
}
