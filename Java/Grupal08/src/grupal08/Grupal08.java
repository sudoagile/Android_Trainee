
package grupal08;

import java.util.ArrayList;
import java.util.Scanner;

public class Grupal08 {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Cuantos usuarios? ");
        int n = teclado.nextInt();
        ArrayList<Usuario> listausers = new ArrayList<>();

        for (int i = 0; i < n; i++) {
            System.out.println("Ingrese el tipo de usuario \n 1 - Cliente \n 2 - Administrativo \n 3 - Profesional");
            int tipo = teclado.nextInt();
            Usuario usuario = null;

            switch (tipo) {
                case 1:
                    Cliente cliente = new Cliente();
                    getCommonData(cliente);
                    cliente.setDireccion(getDataS("Direccion: "));
                    cliente.setTelefono(getDataI("Telefono: "));
                    cliente.setEmpleados(getDataI("Empleados: "));
                    usuario = cliente;
                    break;
                case 2:
                    Administrativo administrativo = new Administrativo();
                    getCommonData(administrativo);
                    administrativo.setFuncion(getDataS("Funcion: "));
                    administrativo.setNombreSuperior(getDataS("Nombre del Superior: "));
                    usuario = administrativo;
                    break;
                case 3:
                    Profesional profesional = new Profesional();
                    getCommonData(profesional);
                    profesional.setAniosExperiencia(getDataI("Años de Experiencia: "));
                    profesional.setDepartamento(getDataS("Departamento: "));
                    usuario = profesional;
                    break;
                default:
                    System.out.println("Tipo de usuario no válido.");
                    i--; // Para repetir la iteración si el tipo no es válido.
            }

            if (usuario != null) {
                listausers.add(usuario);
                System.out.println(usuario.toString());
                System.out.println("________________________");
            }
        }
        // Imprimir todos los usuarios al final
        for (Usuario u : listausers) {
            System.out.println(u);
        }
    }

    static String getDataS(String label) {
        Scanner in = new Scanner(System.in);
        System.out.println(label);
        return in.next();
    }

    static int getDataI(String label) {
        Scanner in = new Scanner(System.in);
        System.out.println(label);
        return in.nextInt();
    }

    static void getCommonData(Usuario u) {
        u.setNombre(getDataS("Nombre: "));
        u.setRut(getDataS("RUT: "));
        u.setFechaN(getDataS("Fecha de Nacimiento (DOB): "));
    }
}

