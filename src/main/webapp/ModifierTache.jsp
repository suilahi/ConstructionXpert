<%@ page import="Model.Tache, Model.Projet" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Modifier Tâche</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./resources/assets/images/bg/1.jpg');">
<div class="bg-transparent container mx-auto bg-white/80 p-6 shadow-lg rounded-lg mt-10">
    <h2 class="text-2xl font-bold text-gray-800 text-center mb-6">Modifier Tâche</h2>
    <a href="Listetache.jsp" class="bg-transparent border border-blue-500 text-blue-500 px-4 py-2 rounded block w-max mx-auto hover:bg-blue-500 hover:text-white">Annuler</a>

    <%
        Tache tache = (Tache) request.getAttribute("taches");
    %>

    <form action="TacheServlet" method="post" class="space-y-4">

        <input type="hidden" name="id_tache" value="<%= tache.getId_tache() %>">

        <div>
            <label class="block text-gray-700">Nom du Projet</label>
            <select name="id_projet" required
                    class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">

                <option value="<%= tache.getId_proget() %>" selected>Projet actuel: <%= tache.getId_proget() %></option>
               </select>
        </div>

        <div>
            <label class="block text-gray-700">Description</label>
            <textarea name="description" required
                      class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"><%= tache.getDescription() %></textarea>
        </div>

        <div>
            <label class="block text-gray-700">Date de Début</label>
            <input type="date" name="date_debut" value="<%= tache.getDate_debut() %>" required
                   class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div>
            <label class="block text-gray-700">Date de Fin</label>
            <input type="date" name="date_fin" value="<%= tache.getDate_fin() %>" required
                   class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div class="text-center">
            <button type="submit" class="px-6 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Enregistrer</button>
            <a href="TacheServlet?action=list" class="px-6 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600">Annuler</a>
        </div>
    </form>
</div>
</body>
</html>
