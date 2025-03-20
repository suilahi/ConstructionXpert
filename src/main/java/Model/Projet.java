package Model;

import java.util.Date;

public class Projet {
    private int id_projet;
    private String nom;
    private String Description;
    private Date DateDebut;
    private Date DateFin;
    private Double budget;

    public Projet(int id_projet, String nom, String description, Date dateDebut, Date dateFin, Double budget) {
        this.id_projet = id_projet;
        this.nom = nom;
        Description = description;
        DateDebut = dateDebut;
        DateFin = dateFin;
        this.budget = budget;
    }

    public Projet(String nom, String description, Date dateDebut, Date dateFin, Double budget) {
        this.nom = nom;
        Description = description;
        DateDebut = dateDebut;
        DateFin = dateFin;
        this.budget = budget;
    }

    public Projet() { }

    //Getter et Setter

    public int getId() {
        return id_projet;
    }

    public void setId(int id) {
        this.id_projet = id;
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

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {

        this.budget = budget;
    }
}
