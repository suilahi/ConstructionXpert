package Model;

import java.util.Date;

public class Projet {
    private int id_projet;
    private String nom;
    private String Description;
    private Date DateDebut;
    private Date DateFin;
    String budget;

    public Projet(int id_projet, String nom, String description, Date dateDebut, Date dateFin, String budget) {
        this.id_projet = id_projet;
        this.nom = nom;
        Description = description;
        DateDebut = dateDebut;
        DateFin = dateFin;
        this.budget = budget;
    }

    public Projet(String nom, String description, Date dateDebut, Date dateFin, String budget) {
        this.nom = nom;
        Description = description;
        DateDebut = dateDebut;
        DateFin = dateFin;
        this.budget = budget;
    }

    public Projet() { }

    public Projet(String nom, String description, String dateDebut, String dateFin, String budget) {

    }

    public Projet(int idProjet, String nom, String description, String dateDebut, String dateFin, String budget) {

    }
    //Getter et Setter

    public int getId() {
        return id_projet;
    }

    public void setId(int id) {
        this.id_projet = id_projet;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Date getDateDebut() {
        return DateDebut;
    }

    public void setDateDebut(Date dateDebut) {
        DateDebut = dateDebut;
    }

    public Date getDateFin() {
        return DateFin;
    }

    public void setDateFin(Date dateFin) {
        DateFin = dateFin;
    }

    public String getBudget() {
        return budget;
    }

    public void setBudget(String budget) {
        this.budget = budget;
    }
}
