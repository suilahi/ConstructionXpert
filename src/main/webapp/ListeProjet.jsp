<%@ page import="java.util.List, Model.Projet , Dao.ProjetDao" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des Projets</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./resources/assets/images/bg/1.jpg');">
<div class="container mx-auto bg-white/80 p-6 shadow-lg rounded-lg">
    <h2 class="text-2xl font-bold text-gray-800 text-center mb-10">Liste des Projets</h2>
    <a href="ajouterProjet.jsp" class="bg-transparent border border-blue-500 text-blue-500 px-4 py-2 rounded block w-max mx-auto hover:bg-blue-500 hover:text-white">Ajouter un Projet</a>

    <%
        ProjetDao projetDAO = new ProjetDao();
        List<Projet> projets = projetDAO.getAllProjets();
        System.out.println("Nombre de projets envoyés à la JSP : " + (projets != null ? projets.size() : "null"));
        for(Projet pr : projets){
            System.out.println(pr.getNom());
        }

    %>

    <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-6 mt-10">
        <% if (projets != null && !projets.isEmpty()) { %>
        <% for (Projet projet : projets) { %>
        <div class="group">
            <div class="relative flex flex-col items-center justify-center w-[350px] h-auto max-w-full border border-gray-100 bg-white rounded-lg shadow-lg transition-all duration-500 p-5">
                <img src="resources/assets/images/blog/sm-img/1.jpg" class="w-full h-56 rounded-lg object-cover mb-4" alt="Projet Image">
                <h2 class="text-2xl font-extrabold text-green-800 text-center"><%= projet.getNom() %></h2>
                <p class="text-base font-normal mt-2 text-neutral-950 text-center"><%= projet.getDescription() %></p>
                <p class="text-lg font-semibold text-gray-700 mt-2 text-center">Budget (MAD) : <%= projet.getBudget() %></p>
                <div class="flex justify-center gap-4 mt-4">
                    <a href="ProjetServlet?action=edit&id_projet=<%= projet.getId() %>" class="py-2 px-4 rounded-md text-white bg-blue-500 hover:bg-blue-600">Modifier</a>
                    <a href="ProjetServlet?action=delete&id_projet=<%= projet.getId() %>" class="py-2 px-4 rounded-md text-white bg-red-500 hover:bg-red-600">Supprimer</a>
                </div>
            </div>
        </div>
        <% } %>
        <% } else { %>
        <p class="text-center text-gray-700 mt-10">Aucun projet disponible.</p>
        <% } %>
    </div>
</div>
</body>
</html>
