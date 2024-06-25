package ejercicioindividual15;

import java.util.Scanner;

public class Calculadora {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese el primer número: ");
        int numero1 = scanner.nextInt();

        System.out.println("Ingrese el segundo número: ");
        int numero2 = scanner.nextInt();

        scanner.nextLine();

        System.out.println("Ingrese el operador (+, -, x, :, /): ");
        String operador = scanner.nextLine();

        int resultado = 0;

        switch (operador) {
            case "+":
                resultado = numero1 + numero2;
                break;
            case "-":
                resultado = numero1 - numero2;
                break;
            case "x":
                resultado = numero1 * numero2;
                break;
            case ":":
                if (numero2 != 0) {
                    resultado = numero1 / numero2;
                } else {
                    System.out.println("Error: División por cero.");
                    return;
                }
                break;
            case "/":
                resultado = numero1 % numero2;
                break;
            default:
                System.out.println("Operador no válido.");
                return;
        }

        System.out.println("El resultado de la operación es: " + resultado);
    }
}

