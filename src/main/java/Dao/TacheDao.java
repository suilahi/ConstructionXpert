package Dao;

import Model.Projet;
import Model.Tache;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static Utils.DataBaseConnection.getConnection;

public class TacheDao {

    public void AjouterTaches(Tache tache){
        try (Connection conn = getConnection()) {
            String query = "INSERT INTO tache(id_projet,description,date_debut,date_fin) VALUES(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, tache.getId_proget());
            ps.setString(2, tache.getDescription());
            ps.setDate(3, tache.getDate_debut());
            ps.setDate(4, tache.getDate_fin());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Tache> getAlltaches (){
        List<Tache> taches = new ArrayList<>();
        String query = "Select * from tache";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                int id_tache = rs.getInt("id_tache");
                int id_projet = rs.getInt("id_projet");
                String description = rs.getString("description");
                Date dateDebut = rs.getDate("date_debut");
                Date dateFin = rs.getDate("date_fin");
                taches.add(new Tache(id_tache,id_projet,description,dateDebut,dateFin));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return taches ;
    }

}
