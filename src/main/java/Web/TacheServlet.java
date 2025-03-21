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
import java.util.List;

@WebServlet("/TacheServlet")
public class TacheServlet extends HttpServlet {
    TacheDao tacheDao = new TacheDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Tache> taches = tacheDao.getAlltaches();
        req.setAttribute("taches", taches);
        RequestDispatcher dispatcher = req.getRequestDispatcher("Listetache.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int ID_projet=Integer.parseInt(req.getParameter("project_id"));
        String description = req.getParameter("description");
        Date dateDebut= Date.valueOf(req.getParameter("date_debut"));
        Date dateFin=Date.valueOf(req.getParameter("date_fin"));

        Tache tache = new Tache(ID_projet,description,dateDebut,dateFin);
        tacheDao.AjouterTaches(tache);
        resp.sendRedirect("Listetache.jsp");
    }
}
