package Web;

import Dao.ProjetDao;
import Model.Projet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/ProjetServlet")
public class ProjetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        String date_debut = req.getParameter("date_debut");
        String date_fin = req.getParameter("date_fin");
        String budget = req.getParameter("budget");

        Projet projet = new Projet(nom,description,date_debut,date_fin,budget);
        ProjetDao projetDao = new ProjetDao();

        try{
            projetDao.ajouterProjet(projet);
            resp.sendRedirect("/ProjetServlet");
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            ProjetDao projetDao = new ProjetDao();
            List<Projet> projets= projetDao.getAllProjets();
            RequestDispatcher dispatcher= req.getRequestDispatcher("Projet.jsp");
            dispatcher.forward(req,resp);


        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
