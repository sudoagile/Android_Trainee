package grupal09;

public class Empresa {
    private String rut;
    private String nombre;
    private String direccion;
    private String comuna;
    private String telefono;

    public Empresa(String rut, String nombre, String direccion, String comuna, String telefono) {
        this.rut = rut;
        this.nombre = nombre;
        this.direccion = direccion;
        this.comuna = comuna;
        this.telefono = telefono;
    }

    public String getRut() {
        return rut;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getComuna() {
        return comuna;
    }

    public String getTelefono() {
        return telefono;
    }
}

