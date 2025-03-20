package Web;

import Dao.ProjetDao;
import Model.Projet;

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

@WebServlet("/ProjetServlet")
public class ProjetServlet extends HttpServlet {

    private ProjetDao projetDAO = new ProjetDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        int id_projet = req.getParameter("id_projet") != null ? Integer.parseInt(req.getParameter("id_projet")) : -1;

        try {
            switch (action != null ? action : "") {
                case "edit":
                    req.setAttribute("projet", projetDAO.getprojetbyid(id_projet));
                    req.getRequestDispatcher("/modifierProjet.jsp").forward(req, resp);
                    return; // Arrête l'exécution après la redirection

                case "delete":
                    projetDAO.DeleteProjet(id_projet);
                    resp.sendRedirect("ProjetServlet?action=list");
                    return; // Arrête l'exécution après la redirection

                case "list":
                default:
                    List<Projet> projets = projetDAO.getAllProjets();
                    System.out.println("Nombre de projets récupérés : " + (projets != null ? projets.size() : "null"));
                    req.setAttribute("projets", projets);
                    RequestDispatcher dispatcher = req.getRequestDispatcher("ListeProjet.jsp");
                    dispatcher.forward(req, resp);
                    return; // Arrête l'exécution après la redirection
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(500, "Database error");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            Projet projet = new Projet();
            projet.setNom(req.getParameter("nom"));
            projet.setDescription(req.getParameter("description"));
            projet.setDateDebut(Date.valueOf(req.getParameter("date_debut")));
            projet.setDateFin(Date.valueOf(req.getParameter("date_fin")));
            projet.setBudget(Double.parseDouble(req.getParameter("budget")));

            if (req.getParameter("id_projet") != null && !req.getParameter("id_projet").isEmpty()) {
                projet.setId(Integer.parseInt(req.getParameter("id_projet")));
                projetDAO.UpdateProjet(projet);
            } else {
                projetDAO.ajouterProjet(projet);
            }

            // Rediriger vers la servlet pour afficher la liste après insertion ou modification
            resp.sendRedirect("ProjetServlet?action=list");

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(500, "Error saving project.");
        }
    }
}
