package grupal09;

import java.util.Scanner;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

public class Grupal09 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Datos de la empresa
        System.out.println("Ingrese el RUT del cliente:");
        String rut = scanner.nextLine();
        
        System.out.println("Ingrese el nombre del cliente:");
        String nombreCliente = scanner.nextLine();
        
        System.out.println("Ingrese la dirección del cliente:");
        String direccion = scanner.nextLine();
        
        System.out.println("Ingrese la comuna del cliente:");
        String comuna = scanner.nextLine();
        
        System.out.println("Ingrese el número de teléfono del cliente:");
        String telefono = scanner.nextLine();
        
        Empresa empresa = new Empresa(rut, nombreCliente, direccion, comuna, telefono);
        
        // Datos de la capacitación
        LocalDate dia = null;
        LocalTime hora = null;

        while (dia == null) {
            try {
                System.out.println("Ingrese el día de la capacitación (formato YYYY-MM-DD):");
                dia = LocalDate.parse(scanner.nextLine(), DateTimeFormatter.ISO_LOCAL_DATE);
            } catch (DateTimeParseException e) {
                System.out.println("Fecha inválida. Intente de nuevo.");
            }
        }

        while (hora == null) {
            try {
                System.out.println("Ingrese la hora de la capacitación (formato HH:MM):");
                hora = LocalTime.parse(scanner.nextLine(), DateTimeFormatter.ISO_LOCAL_TIME);
            } catch (DateTimeParseException e) {
                System.out.println("Hora inválida. Intente de nuevo.");
            }
        }

        System.out.println("Ingrese el lugar de la capacitación:");
        String lugar = scanner.nextLine();
        
        System.out.println("Ingrese la duración de la capacitación en horas:");
        int duracion = scanner.nextInt();
        
        System.out.println("Ingrese la cantidad de asistentes:");
        int cantidadAsistentes = scanner.nextInt();
        
        // Validación de cantidad de asistentes
        while (cantidadAsistentes <= 0) {
            System.out.println("La cantidad de asistentes debe ser mayor que cero. Ingrese nuevamente:");
            cantidadAsistentes = scanner.nextInt();
        }
        
        scanner.nextLine();  // Limpiar el buffer
        
        Capacitacion capacitacion = new Capacitacion(dia, hora, lugar, duracion, cantidadAsistentes);

        // Datos de los asistentes
        Asistente[] asistentes = new Asistente[cantidadAsistentes];
        
        for (int i = 0; i < cantidadAsistentes; i++) {
            System.out.println("Ingrese el nombre del asistente " + (i + 1) + ":");
            String nombreAsistente = scanner.nextLine();
            
            System.out.println("Ingrese la edad del asistente " + (i + 1) + ":");
            int edadAsistente = scanner.nextInt();
            scanner.nextLine();  // Limpiar el buffer
            
            asistentes[i] = new Asistente(nombreAsistente, edadAsistente);
        }
        
        // Mostrar datos
        System.out.println("\nDatos del cliente:");
        System.out.println("RUT: " + empresa.getRut());
        System.out.println("Nombre: " + empresa.getNombre());
        System.out.println("Dirección: " + empresa.getDireccion());
        System.out.println("Comuna: " + empresa.getComuna());
        System.out.println("Teléfono: " + empresa.getTelefono());
        
        System.out.println("\nDatos de la capacitación:");
        System.out.println("Día: " + capacitacion.getDia());
        System.out.println("Hora: " + capacitacion.getHora());
        System.out.println("Lugar: " + capacitacion.getLugar());
        System.out.println("Duración: " + capacitacion.getDuracion() + " horas");
        System.out.println("Cantidad de asistentes: " + capacitacion.getCantidadAsistentes());
        
        // Contar asistentes por grupo de edad
        int menores25 = 0;
        int entre26y35 = 0;
        int mayores35 = 0;
        
        for (Asistente asistente : asistentes) {
            if (asistente.getEdad() < 25) {
                menores25++;
            } else if (asistente.getEdad() >= 26 && asistente.getEdad() <= 35) {
                entre26y35++;
            } else {
                mayores35++;
            }
        }
        
        System.out.println("\nCantidad de asistentes por grupo de edad:");
        System.out.println("Menores de 25 años: " + menores25);
        System.out.println("Entre 26 y 35 años: " + entre26y35);
        System.out.println("Mayores de 35 años: " + mayores35);
        
        scanner.close();
    }
}
