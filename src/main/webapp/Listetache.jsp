<%@ page import="java.util.List, Model.Tache, Dao.TacheDao" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des Tâches</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <!-- All css files are included here. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/core.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/shortcode/shortcodes.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/custom.css">

    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./resources/assets/images/bg/1.jpg');">

<!-- Sticky Header / Menu -->
<div id="sticky-header-with-topbar" class="bg-white mainmenu__wrap sticky__header">
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-sm-6 col-xs-7">
                <div class="logo">
                    <a href="index.jsp">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/logo/sinply-construction.png" alt="logo image">
                    </a>
                </div>
            </div>
            <div class="col-md-8 col-sm-6 col-xs-5">
                <nav class="main__menu__nav hidden-xs hidden-sm">
                    <ul class="main__menu">
                        <li class="drop"><a href="index.jsp">HOME</a></li>
                        <li><a href="About.jsp">ABOUT</a></li>
                        <li><a href="TacheServlet?action=list">Taches</a></li>
                        <li><a href="ProjetServlet?action=list">projects</a></li>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- End Mainmenu Area -->

<div class="container mx-auto bg-white/80 p-6 shadow-lg rounded-lg mt-10">
    <h2 class="text-2xl font-bold text-gray-800 text-center mb-10">Liste des Tâches</h2>
    <a href="Ajoutertache.jsp" class="bg-blue-500  border border-blue-500 text-white  px-4 py-2 rounded block w-max mx-auto hover:bg-transparent hover:text-blue-500">Ajouter une Tâche</a>

    <%
        TacheDao tacheDAO = new TacheDao();
        List<Tache> taches = tacheDAO.getAlltaches();
    %>
    <div class="overflow-x-auto mt-10">
        <% if (taches != null && !taches.isEmpty()) { %>
        <table class="min-w-full table-auto">
            <thead>
            <tr class="bg-gray-200">
                <th class="py-2 px-4 text-left">ID Tâche</th>
                <th class="py-2 px-4 test-left">ID Projet</th>
                <th class="py-2 px-4 text-left">Description</th>
                <th class="py-2 px-4 text-left">Date Début</th>
                <th class="py-2 px-4 text-left">Date Fin</th>
                <th class="py-2 px-4 text-left">Actions</th>
            </tr>
            </thead>
            <tbody>
            <% for (Tache tache : taches) { %>
            <tr class="border-b">
                <td class="py-2 px-4"><%= tache.getId_tache() %></td>
                <td class="py-2 px-4"><%=tache.getId_proget()%></td>
                <td class="py-2 px-4"><%= tache.getDescription() %></td>
                <td class="py-2 px-4"><%= tache.getDate_debut() %></td>
                <td class="py-2 px-4"><%= tache.getDate_fin() %></td>
                <td class="py-2 px-4">
                    <a href="TacheServlet?action=edit&id_tache=<%= tache.getId_tache() %>" class="slider__btn htc__btn bg-[#0F67B1] hover:bg-white/10">Modifier</a> |
                    <a href="TacheServlet?action=delete&id_tache=<%= tache.getId_tache() %>" class="slider__btn htc__btn ">Supprimer</a>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p class="text-center text-gray-700 mt-10">Aucune tâche disponible.</p>
        <% } %>
    </div>
</div>

<script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

</body>
</html>
