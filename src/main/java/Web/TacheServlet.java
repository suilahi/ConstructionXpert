package Web;

import Dao.TacheDao;
import Model.Projet;
import Model.Tache;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/TacheServlet")
public class TacheServlet extends HttpServlet {
    TacheDao tacheDao = new TacheDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        int id_tache = req.getParameter("id_tache") != null ? Integer.parseInt(req.getParameter("id_tache")) : -1;

        switch (action!=null ? action:""){
            case "edit":
                req.setAttribute("taches", tacheDao.gettachebyid(id_tache));
                req.getRequestDispatcher("/ModifierTache.jsp").forward(req, resp);
                return;
            case "delete":
                try {
                    tacheDao.DeleteTache(id_tache);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                resp.sendRedirect("TacheServlet?action=list");
                return;
            case "list":
            default:
                List<Tache> taches = tacheDao.getAlltaches();
                req.setAttribute("taches", taches);
                RequestDispatcher dispatcher = req.getRequestDispatcher("Listetache.jsp");
                dispatcher.forward(req, resp);


        }


    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int idTache = req.getParameter("id_tache") != null ? Integer.parseInt(req.getParameter("id_tache")) : -1;
        int idProjet = Integer.parseInt(req.getParameter("id_projet"));  // Changer de "project_id" à "id_projet"
        String description = req.getParameter("description");
        Date dateDebut = Date.valueOf(req.getParameter("date_debut"));
        Date dateFin = Date.valueOf(req.getParameter("date_fin"));

        Tache tache = new Tache(idProjet, description, dateDebut, dateFin);

        if (idTache != -1) {
            tache.setId_tache(idTache);
            try {
            tacheDao.UpdateTache(tache);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            tacheDao.AjouterTaches(tache);
        }

        resp.sendRedirect("TacheServlet?action=list");
    }

}
