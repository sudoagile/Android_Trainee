package clasefundamento;

import java.util.Scanner;

public class ClaseFundamento {

    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        
        double num1, num2, resultado;
        String simbolo;
        
        System.out.println("Ingresa el primer nÃºmero: ");
        num1 = input.nextDouble();
        
        System.out.println("Ingresa el segundo nÃºmero: ");
        num2 = input.nextDouble();
        
        System.out.println("Ingresa el simbolo de la ecuaciÃ³n: (+, -, x, /)");
        simbolo = input.next();
        
        
        if (simbolo.equals("+")) {
            resultado = num1 + num2;
            System.out.println("El resultado de la suma es: " + resultado);
        } else if (simbolo.equals("-")) {
            resultado = num1 - num2;
            System.out.println("El resultado de la resta es: " + resultado);
        } else if (simbolo.equals("x")) {
            resultado = num1 * num2;
            System.out.println("El resultado de la multiplicaciÃ³n es: " + resultado);
        } else if (simbolo.equals("/")) {
            resultado = num1 / num2;
            System.out.println("El resultado de la divisiÃ³n es: " + resultado);
        } else {
            System.out.println("El simbolo ingresado es incorrecto");
        }
        
    }
    
}