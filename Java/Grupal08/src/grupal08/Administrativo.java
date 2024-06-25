package grupal08;

public class Administrativo extends Usuario {
    private String funcion;
    private String nombreSuperior;

    public void setFuncion(String funcion) { this.funcion = funcion; }
    public void setNombreSuperior(String nombreSuperior) { this.nombreSuperior = nombreSuperior; }

    public String toString() {
        return super.toString() + ", Función: " + funcion + ", Nombre del Superior: " + nombreSuperior;
    }
}
