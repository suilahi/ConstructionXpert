<%@ page import="java.util.List, Model.Projet , Dao.ProjetDao" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Liste des Projets</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">


    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <!-- Owl Carousel  main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/custom.css">


    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./resources/assets/images/bg/1.jpg');">
<div class="container mx-auto bg-white/80 p-6 shadow-lg rounded-lg">


    <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
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
                            <li class="drop"><a href="#">pages</a>
                                <ul class="dropdown">
                                    <li><a href="ProjetServlet?action=list">projects</a></li>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                    <div class="mobile-menu clearfix visible-xs visible-sm">
                        <nav id="mobile_dropdown">
                            <ul>
                                <li><a href="index.jsp">Home</a>

                                </li>
                                <li><a href="About.jsp">ABOUT</a></li>
                                <li><a href="#">PROJECTS</a>
                                    <ul>
                                        <li><a href="projects-one.jsp">projects one</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">pages</a>
                                    <ul>
                                        <li><a href="projects-one.jsp">projects one</a></li>
                                        <li><a href="single-project.jsp">Single Project</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

    <h2 class="text-2xl font-bold text-gray-800 text-center mb-10">Liste des Projets</h2>
    <a href="ajouterProjet.jsp" class="bg-transparent border border-blue-500 text-blue-500 px-4 py-2 rounded block w-max mx-auto hover:bg-blue-500 hover:text-white">Ajouter un Projet</a>

    <%
        ProjetDao projetDAO = new ProjetDao();
        List<Projet> projets = projetDAO.getAllProjets();

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
                    <a href="ProjetServlet?action=edit&id_projet=<%= projet.getId() %>" class="py-2 px-4 rounded-md text-white bg-green-500 hover:bg-blue-600">Modifier</a>
                    <a href="ProjetServlet?action=delete&id_projet=<%= projet.getId() %>" class="py-2 px-4 rounded-md text-white bg-red-500 hover:bg-red-600">Supprimer</a>
                </div>
            </div>
        </div>
        <% } %>
        <% } else { %>
        <p class="text-center text-gray-700 mt-10">Aucun projet disponible.</p>
        <% } %>
    </div>

</body>
</html>
