package grupal08;

public class Cliente extends Usuario {
    private String direccion;
    private int telefono;
    private int empleados;

    public void setDireccion(String direccion) { this.direccion = direccion; }
    public void setTelefono(int telefono) { this.telefono = telefono; }
    public void setEmpleados(int empleados) { this.empleados = empleados; }

    public String toString() {
        return super.toString() + ", Dirección: " + direccion + ", Teléfono: " + telefono + ", Empleados: " + empleados;
    }
}
