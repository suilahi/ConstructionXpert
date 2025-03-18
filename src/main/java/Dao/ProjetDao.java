package Dao;

import Model.Projet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static Utils.DataBaseConnection.getConnection;

public class ProjetDao {


    public void ajouterProjet(Projet projet) {
        try (Connection conn = getConnection()) {
            String query = "INSERT INTO projet(id_projet,nom,description,date_debut,date_fin,budget) VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, projet.getNom());
            ps.setString(2, projet.getDescription());
            ps.setString(3, projet.getDateDebut().toString());
            ps.setString(4, projet.getDateFin().toString());
            ps.setString(5, projet.getBudget());
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Projet> getAllProjets() {
        List<Projet> projets = new ArrayList<>();
        String query = "Select*from projet";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                int id_projet = rs.getInt("id_projet");
                String nom = rs.getString("nom");
                String description = rs.getString("description");
                String dateDebut = rs.getString("date_debut");
                String dateFin = rs.getString("date_fin");
                String budget = rs.getString("budget");
                projets.add(new Projet(id_projet,nom,description,dateDebut,dateFin,budget));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return projets;
    }
}
