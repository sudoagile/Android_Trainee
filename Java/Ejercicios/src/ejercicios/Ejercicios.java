
package ejercicios;

import java.util.Scanner;
import java.util.Random;

public class Ejercicios {

   
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();
        
        System.out.print("Ingresa el primer número: ");
        int num1 = scanner.nextInt();
        System.out.print("Ingresa el segundo número: ");
        int num2 = scanner.nextInt();
        
        int min = Math.min(num1, num2);
        int max = Math.max(num1, num2);
        
        System.out.println("5 números enteros aleatorios entre " + min + " y " + max + ":");
        for (int i = 0; i < 5; i++) {
            int randomNumber = random.nextInt((max - min) + 1) + min;
            System.out.println(randomNumber);
        }
    }
    
}
