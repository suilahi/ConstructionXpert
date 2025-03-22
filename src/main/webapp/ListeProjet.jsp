<%@ page import="java.util.List, Model.Projet , Dao.ProjetDao ,Model.Tache ,Dao.TacheDao" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des Projets</title>
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
<div id="sticky-header-with-topbar" class=" bg-white mainmenu__wrap sticky__header">
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
                <nav class="main__menu__nav  hidden-xs hidden-sm">
                    <ul class="main__menu">

                        <li class="drop"><a href="index.jsp">HOME</a></li>

                        <li><a href="About.jsp">ABOUT</a></li>

                        <li><a href="Listetache.jsp">Taches</a></li>

                        <li><a href="ProjetServlet?action=list">projects</a></li>

                    </ul>
                </nav>
                <div class="mobile-menu clearfix visible-xs visible-sm">
                    <nav id="mobile_dropdown">
                        <ul class="space-y-4">
                            <li><a href="index.jsp" class="block text-lg text-gray-700 hover:text-blue-500">HOME</a></li>
                            <li><a href="Ajoutertache.jsp" class="block text-lg text-gray-700 hover:text-blue-500">Tache</a></li>
                            <li><a href="About.jsp" class="block text-lg text-gray-700 hover:text-blue-500">ABOUT</a></li>
                            <li><a href="ProjetServlet?action=list" class="block text-lg text-gray-700 hover:text-blue-500">PROJECTS</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div class="col-md-2 col-sm-6 hidden-xs">
                <div class="htc__header__search">
                    <input type="text" placeholder="SEARCH">
                    <a href="#"><i class="fa fa-search"></i></a>
                </div>
            </div>
        </div>
        <div class="mobile-menu-area "></div>
    </div>
</div>
<!-- End Mainmenu Area -->
</div>
<div class="container mx-auto bg-white/80 p-6 shadow-lg rounded-lg mt-10">
    <h2 class="text-2xl font-bold text-gray-800 text-center mb-10">Liste des Projets</h2>
    <a href="ajouterProjet.jsp" class="bg-blue-500  border border-blue-500 text-white  px-4 py-2 rounded block w-max mx-auto hover:bg-transparent hover:text-blue-500">Ajouter un Projet</a>

    <%
        ProjetDao projetDAO = new ProjetDao();
        List<Projet> projets = projetDAO.getAllProjets();
    %>

    <div class="grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-10">
        <% if (projets != null && !projets.isEmpty()) { %>
        <% for (Projet projet : projets ) { %>
        <div class="group">
            <div class="relative flex flex-col items-center justify-center w-full h-auto border border-gray-100 bg-white rounded-lg shadow-lg transition-all duration-500 p-5">
                <img src="resources/assets/images/lst-project-2/1.jpg" class="w-full h-56 rounded-lg object-cover mb-4" alt="Projet Image">
                <h2 class="text-2xl font-extrabold text-gray-900 text-center"><%= projet.getNom() %></h2>
                <p class="text-base font-normal mt-2 text-neutral-950 text-center"><%= projet.getDescription() %></p>
                <p class="text-lg font-semibold text-gray-700 mt-2 text-center">Budget (MAD) : <%= projet.getBudget() %></p>
                <div class="flex justify-center gap-4 mt-4">
                    <a href="ProjetServlet?action=edit&id_projet=<%= projet.getId() %>" class="slider__btn htc__btn bg-[#0F67B1] hover:bg-[#3FA2F6]">Modifier</a>
                    <a href="ProjetServlet?action=delete&id_projet=<%= projet.getId() %>" class="slider__btn htc__btn">Supprimer</a>
                </div>
            </div>
        </div>
        <% } %>
        <% } else { %>
        <p class="text-center text-gray-700 mt-10">Aucun projet disponible.</p>
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
