package Dao;

import Model.Projet;
import Model.Tache;
import Utils.DataBaseConnection;

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

    public Tache gettachebyid (int id_tache ) {
        String query = "Select * from tache where id_tache=?";
        Tache tache = null;
        try (Connection conn = getConnection()) {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id_tache);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                tache = new Tache();
                tache.setId_tache(rs.getInt("id_tache"));
                tache.setId_proget(rs.getInt("id_projet"));
                tache.setDescription(rs.getString("description"));
                tache.setDate_debut(rs.getDate("date_debut"));
                tache.setDate_fin(rs.getDate("date_fin"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tache;
    }

    public Tache UpdateTache(Tache tache) throws SQLException{
        String sql = "UPDATE tache SET id_projet=?, description = ?, date_debut = ?, date_fin = ? WHERE id_tache = ?";
        PreparedStatement stmt = DataBaseConnection.getConnection().prepareStatement(sql);
        stmt.setInt(1,tache.getId_proget());
        stmt.setString(2, tache.getDescription() != null ? tache.getDescription() : "");
        stmt.setDate(3, tache.getDate_debut() != null ? (java.sql.Date) tache.getDate_debut() : new java.sql.Date(System.currentTimeMillis()));
        stmt.setDate(4, tache.getDate_fin() != null ? (java.sql.Date) tache.getDate_fin() : new java.sql.Date(System.currentTimeMillis()));
        stmt.setInt(5,tache.getId_tache());

        int rowsUpdated = stmt.executeUpdate();
        if (rowsUpdated == 0) {
            throw new SQLException("No project found with ID " + tache.getId_tache());
        }

        return tache;
    }
    public void DeleteTache(int id_tache) throws SQLException{

        String query = "delete from tache where id_tache = ?;";
        try(Connection connection = DataBaseConnection.getConnection();
            PreparedStatement stmt = connection.prepareStatement(query)){

            stmt.setInt(1, id_tache);
            stmt.executeUpdate();
        }

    }

}
