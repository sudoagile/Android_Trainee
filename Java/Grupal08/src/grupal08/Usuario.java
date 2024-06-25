package grupal08;

public class Usuario {
    private String nombre;
    private String rut;
    private String fechaN;

    public void setNombre(String nombre) { this.nombre = nombre; }
    public void setRut(String rut) { this.rut = rut; }
    public void setFechaN(String fechaN) { this.fechaN = fechaN; }

    public String toString() {
        return "Nombre: " + nombre + ", RUT: " + rut + ", Fecha de Nacimiento: " + fechaN;
    }
}

