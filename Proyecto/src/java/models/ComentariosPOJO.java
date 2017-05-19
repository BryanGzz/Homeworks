
package models;

public class ComentariosPOJO {
    private String nombre;
    private String comentario;

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getComentario() {
        return comentario;
    }
    public String getNombre() {
        return nombre;
    }   
}
