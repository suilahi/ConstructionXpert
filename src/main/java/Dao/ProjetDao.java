package Dao;

import Model.Projet;
import Utils.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static Utils.DataBaseConnection.getConnection;

public class ProjetDao {


    public void ajouterProjet(Projet projet) {
        try (Connection conn = getConnection()) {
            String query = "INSERT INTO projet(nom,description,date_debut,date_fin,budget) VALUES(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, projet.getNom());
            ps.setString(2, projet.getDescription());
            ps.setString(3, projet.getDateDebut().toString());
            ps.setString(4, projet.getDateFin().toString());
            ps.setDouble(5, projet.getBudget());
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Projet getprojetbyid(int id_projet) {
        String query = "SELECT * FROM projet WHERE id_projet = ?";
        Projet projet = null;
        try (Connection conn = getConnection()) {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id_projet);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                projet = new Projet();
                projet.setId(rs.getInt("id_projet"));
                projet.setNom(rs.getString("nom"));
                projet.setDescription(rs.getString("description"));
                projet.setDateDebut(rs.getDate("date_debut"));
                projet.setDateFin(rs.getDate("date_fin"));
                projet.setBudget(rs.getDouble("budget"));
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return projet;
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
                Date dateDebut = rs.getDate("date_debut");
                Date dateFin = rs.getDate("date_fin");
                Double budget = rs.getDouble("budget");
                projets.add(new Projet(id_projet,nom,description,dateDebut,dateFin,budget));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return projets;
    }

    public Projet UpdateProjet(Projet projet) throws SQLException{
        String sql = "UPDATE projet SET nom = ?, description = ?, date_debut = ?, date_fin = ?, budget = ? WHERE id_projet = ?";
        PreparedStatement stmt = DataBaseConnection.getConnection().prepareStatement(sql);

        stmt.setString(1, projet.getNom());
        stmt.setString(2, projet.getDescription() != null ? projet.getDescription() : "");
        stmt.setDate(3, projet.getDateDebut() != null ? (java.sql.Date) projet.getDateDebut() : new java.sql.Date(System.currentTimeMillis()));        stmt.setDate(4, projet.getDateFin() != null ? (java.sql.Date) projet.getDateFin() : new java.sql.Date(System.currentTimeMillis()));
        stmt.setDouble(5, projet.getBudget());
        stmt.setInt(6, projet.getId());

        int rowsUpdated = stmt.executeUpdate();
        if (rowsUpdated == 0) {
            throw new SQLException("No project found with ID " + projet.getId());
        }


        return projet;
        }

    public void DeleteProjet(int id_projet) throws SQLException{
        String query = "delete from projet where id_projet = ?;";
        try(Connection connection = DataBaseConnection.getConnection();
            PreparedStatement stmt = connection.prepareStatement(query)){

            stmt.setInt(1, id_projet);
            stmt.executeUpdate();
        }

    }
}
