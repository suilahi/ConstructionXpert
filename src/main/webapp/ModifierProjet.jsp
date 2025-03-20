<%@ page import="Model.Projet" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Modifier Projet</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./resources/assets/images/bg/1.jpg');">
<div class="bg-transparent container mx-auto bg-white/80 p-6 shadow-lg rounded-lg mt-10">
    <h2 class="text-2xl font-bold text-gray-800 text-center mb-6">Modifier Projet</h2>
    <a href="ListeProjet.jsp" class="bg-transparent border border-blue-500 text-blue-500 px-4 py-2 rounded block w-max mx-auto hover:bg-blue-500 hover:text-white">Annuler</a>


    <% Projet projet = (Projet) request.getAttribute("projet"); %>

    <form action="ProjetServlet" method="post" class="space-y-4">
        <input type="hidden" name="id_projet" value="<%= projet.getId() %>">

        <div>
            <label class="block text-gray-700">Nom du Projet</label>
            <input type="text" name="nom" value="<%= projet.getNom() %>" required
                   class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div>
            <label class="block text-gray-700">Description</label>
            <textarea name="description" required
                      class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"><%= projet.getDescription() %></textarea>
        </div>

        <div>
            <label class="block text-gray-700">Date de Début</label>
            <input type="date" name="date_debut" value="<%= projet.getDateDebut() %>" required
                   class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div>
            <label class="block text-gray-700">Date de Fin</label>
            <input type="date" name="date_fin" value="<%= projet.getDateFin() %>" required
                   class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div>
            <label class="block text-gray-700">Budget</label>
            <input type="number" name="budget" step="0.01" value="<%= projet.getBudget() %>" required
                   class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div class="text-center">
            <button type="submit" class="px-6 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Enregistrer</button>
            <a href="ProjetServlet?action=list" class="px-6 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600">Annuler</a>
        </div>
    </form>
</div>
</body>
</html>