package grupal08;

public class Profesional extends Usuario {
    private int aniosExperiencia;
    private String departamento;

    public void setAniosExperiencia(int aniosExperiencia) { this.aniosExperiencia = aniosExperiencia; }
    public void setDepartamento(String departamento) { this.departamento = departamento; }

    public String toString() {
        return super.toString() + ", Años de Experiencia: " + aniosExperiencia + ", Departamento: " + departamento;
    }
}
