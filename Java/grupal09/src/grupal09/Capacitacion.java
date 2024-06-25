package grupal09;

import java.time.LocalDate;
import java.time.LocalTime;

public class Capacitacion {
    private LocalDate dia;
    private LocalTime hora;
    private String lugar;
    private int duracion;
    private int cantidadAsistentes;

    public Capacitacion(LocalDate dia, LocalTime hora, String lugar, int duracion, int cantidadAsistentes) {
        this.dia = dia;
        this.hora = hora;
        this.lugar = lugar;
        this.duracion = duracion;
        this.cantidadAsistentes = cantidadAsistentes;
    }

    public LocalDate getDia() {
        return dia;
    }

    public LocalTime getHora() {
        return hora;
    }

    public String getLugar() {
        return lugar;
    }

    public int getDuracion() {
        return duracion;
    }

    public int getCantidadAsistentes() {
        return cantidadAsistentes;
    }
}
