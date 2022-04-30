
package com.emergentes.modelo;

/**
 *
 * @author Gualbert
 */
public class Aviso {

    private int id;
    private String titulo;
    private String contenido;

    public Aviso() {
        this.id = 0;
        this.titulo = "";
        this.contenido = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }
    
    
    
}
