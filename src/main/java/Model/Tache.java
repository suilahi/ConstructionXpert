package Model;

import java.util.Date;

public class Tache {
    private int id_tache;
    private int id_proget;
    private String description;
    private Date date_debut;
    private Date date_fin;

    public Tache(int id_tache, int id_proget, String description, Date date_debut, Date date_fin) {
        this.id_tache = id_tache;
        this.id_proget = id_proget;
        this.description = description;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
    }

    public Tache(int id_proget, String description, Date date_debut, Date date_fin) {
        this.id_proget = id_proget;
        this.description = description;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
    }

    public Tache() {

    }

    public int getId_tache() {
        return id_tache;
    }

    public void setId_tache(int id_tache) {
        this.id_tache = id_tache;
    }

    public int getId_proget() {
        return id_proget;
    }

    public void setId_proget(int id_proget) {
        this.id_proget = id_proget;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public java.sql.Date getDate_debut() {
        return (java.sql.Date) date_debut;
    }

    public void setDate_debut(Date date_debut) {
        this.date_debut = date_debut;
    }

    public java.sql.Date getDate_fin() {
        return (java.sql.Date) date_fin;
    }

    public void setDate_fin(Date date_fin) {
        this.date_fin = date_fin;
    }
}
