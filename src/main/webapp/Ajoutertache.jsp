<%@ page import="Dao.ProjetDao" %>
<%@ page import="Model.Projet" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Projet</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex justify-center items-center min-h-screen" style="background-image: url('./resources/assets/images/bg/2.jpg');">
<div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-lg">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-5">Ajouter une tache</h2>
    <form action="TacheServlet" method="POST" class="space-y-4">

        <div>
            <label for="id_projet" class="block font-bold sm:text-sm">Project</label>
            <select id="id_projet" name="id_projet" required class="w-full p-4 sm:p-3 border rounded-lg focus:outline-none focus:ring-2 focus:ring-[#F4A261]">
                <option value="">Select a project</option>
                <%
                    ProjetDao projectDAO = new ProjetDao();
                    List<Projet> projects = projectDAO.getAllProjets();
                    for(Projet project : projects){
                %>
                <option value="<%= project.getId() %>"><%= project.getNom() %></option>
                <% } %>
            </select>
            <div id="projectIdError" class="error"></div>
        </div>
        <div>
            <label class="block text-gray-600 font-medium">Description</label>
            <textarea name="description" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400"></textarea>
        </div>
        <div>
            <label class="block text-gray-600 font-medium">Date de début</label>
            <input type="date" name="date_debut" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400">
        </div>
        <div>
            <label class="block text-gray-600 font-medium">Date de fin</label>
            <input type="date" name="date_fin" required class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400">
        </div>
        <div class="flex justify-center">
            <button type="submit" class="bg-blue-500 text-white px-6 py-2 rounded-lg hover:bg-blue-600">Ajouter Tache</button>
            <a  class="bg-blue-500 text-white px-6 py-2 rounded-lg hover:bg-blue-600 ml-4" href="Listetache.jsp.jsp">Annuler</a>
        </div>
    </form>
</div>
</body>
</html>