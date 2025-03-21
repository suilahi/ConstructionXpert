<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 18/03/2025
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Simply Construction || HTML5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico in the root directory -->
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

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please
<a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

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
                <div class="mobile-menu-area"></div>
            </div>
        </div>
        <!-- End Mainmenu Area -->
    </div>
    <!-- End Header Style -->
    <!-- Start Slider Area -->
    <div class="slider__container">
        <div class="slider__activation__wrap owl-carousel owl-theme">
            <!-- Start Single Slide -->
            <div class="slide slider__fixed--height slide__align--center" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/resources/assets/images/slider/bg/1.jpg) no-repeat scroll 0 0 / cover;" data--black__overlay="6">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="slider__inner">
                                <h4>SCIENCE 1953</h4>
                                <h1>WE BUILD THE TRUST</h1>
                                <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment</p>
                                <div class="slider__btn">
                                    <a class="htc__btn" href="About.jsp">CONTACT US</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="htc__slider__fornt__img">
                    <img src="${pageContext.request.contextPath}/resources/assets/images/slider/fornt-img/1.png" alt="slider images">
                </div>
            </div>
            <!-- End Single Slide -->
            <!-- Start Single Slide -->
            <div class="slide slider__fixed--height slide__align--center" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/resources/assets/images/slider/bg/2.jpg) no-repeat scroll 0 0 / cover;" data--black__overlay="6">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="slider__inner">
                                <h4>SCIENCE 1953</h4>
                                <h1>WE BUILD THE TRUST</h1>
                                <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment</p>
                                <div class="slider__btn">
                                    <a class="htc__btn" href="contact.html">CONTACT US</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="htc__slider__fornt__img">
                    <img src="${pageContext.request.contextPath}/resources/assets/images/slider/fornt-img/1.png" alt="slider images">
                </div>
            </div>
            <!-- End Single Slide -->
        </div>
    </div>
    <!-- Start Slider Area -->
    <!-- Start Offer Area -->
    <section class="htc__offer__area htc__offer--2 pb--120 bg__gray">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="offer">
                        <div class="offer__icon">
                            <img src="${pageContext.request.contextPath}/resources/assets/images/others/icon-2/1.png" alt="icon images">
                        </div>
                        <div class="offer__details">
                            <h2><a href="#">TOP RATED</a></h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled demoralized</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12 xmt-40">
                    <div class="offer separator">
                        <div class="offer__icon">
                            <img src="${pageContext.request.contextPath}/resources/assets/images/others/icon-2/2.png" alt="icon images">
                        </div>
                        <div class="offer__details">
                            <h2><a href="#">BEST QUALITY</a></h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled demoralized</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 hidden-sm col-xs-12 xmt-40">
                    <div class="offer separator">
                        <div class="offer__icon">
                            <img src="${pageContext.request.contextPath}/resources/assets/images/others/icon-2/3.png" alt="icon images">
                        </div>
                        <div class="offer__details">
                            <h2><a href="#">LOW COST</a></h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled demoralized</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="h1__offer__image">
            <img src="${pageContext.request.contextPath}/resources/assets/images/others/3.png" alt="">
        </div>
    </section>
    <!-- End Offer Area -->
    <!-- Start About Area -->
    <section class="htc__service__area service--2 bg__gray">
        <div class="container-fluid">
            <div class="row">
                <div class="service__section__wrap clearfix">
                    <!-- Start Single Service -->
                    <div class="col-md-5 col-lg-4 col-sm-12 col-xs-12">
                        <div class="service__thumb">
                            <img src="${pageContext.request.contextPath}/resources/assets/images/about/2.jpg" alt="about image">
                        </div>
                    </div>
                    <!-- End Single Service -->
                    <div class="col-md-7 col-lg-8 col-sm-12 col-xs-12 h1__service pt--40 pb--30">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="section__title text-left">
                                    <h2 class="title__line">OUR <span class="text--theme">SERVICES</span></h2>
                                    <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- Start Single Service -->
                            <div class="col-md-4 col-lg-4 col-sm-4 col-xs-12">
                                <div class="service">
                                    <div class="service__thumb">
                                        <a href="single-service.html">
                                            <img src="${pageContext.request.contextPath}/resources/assets/images/service/1.jpg" alt="service images">
                                        </a>
                                        <div class="service__hover">
                                            <div class="service__action">
                                                <a href="single-service.html">DETAILS</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service__details">
                                        <h2><a href="single-service.html">CONSTRUCTION</a></h2>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Service -->
                            <!-- Start Single Service -->
                            <div class="col-md-4 col-lg-4 col-sm-4 col-xs-12">
                                <div class="service">
                                    <div class="service__thumb">
                                        <a href="single-service.html">
                                            <img src="${pageContext.request.contextPath}/resources/assets/images/service/2.jpg" alt="service images">
                                        </a>
                                        <div class="service__hover">
                                            <div class="service__action">
                                                <a href="single-service.html">DETAILS</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service__details">
                                        <h2><a href="single-service.html">RENOVATION</a></h2>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Service -->
                            <!-- Start Single Service -->
                            <div class="col-md-4 col-lg-4 col-sm-4 col-xs-12">
                                <div class="service">
                                    <div class="service__thumb">
                                        <a href="single-service.html">
                                            <img src="${pageContext.request.contextPath}/resources/assets/images/service/3.jpg" alt="service images">
                                        </a>
                                        <div class="service__hover">
                                            <div class="service__action">
                                                <a href="single-service.html">DETAILS</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service__details">
                                        <h2><a href="single-service.html">ARCHITECTURE</a></h2>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Service -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="htc__team__area bg__white h1__team--one ptb--150 text__pos">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section__title text-center">
                        <h2 class="title__line">OUR <span class="text--theme">TEAM</span></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="htc__team__wrap clearfix mt--30">
                    <!-- Start Single Team -->
                    <div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
                        <div class="team foo">
                            <div class="team__inner">
                                <div class="team__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/team/1.jpg" alt="team image">
                                </div>
                                <div class="team__hover__info">
                                    <ul class="team__social__link">
                                        <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team__details">
                                <h2><a href="#">STAWART SMITH</a></h2>
                                <h4>Chief Engineer</h4>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Team -->
                    <!-- Start Single Team -->
                    <div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
                        <div class="team foo">
                            <div class="team__inner">
                                <div class="team__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/team/2.jpg" alt="team image">
                                </div>
                                <div class="team__hover__info">
                                    <ul class="team__social__link">
                                        <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team__details">
                                <h2><a href="#">KALVIN MOMEN</a></h2>
                                <h4>KALVIN MOMEN</h4>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Team -->
                    <!-- Start Single Team -->
                    <div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
                        <div class="team foo">
                            <div class="team__inner">
                                <div class="team__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/team/3.jpg" alt="team image">
                                </div>
                                <div class="team__hover__info">
                                    <ul class="team__social__link">
                                        <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team__details">
                                <h2><a href="#">ANDREW SIMONS</a></h2>
                                <h4>Chief Electicians</h4>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Team -->
                    <!-- Start Single Team -->
                    <div class="col-md-3 col-lg-3 hidden-sm col-xs-12">
                        <div class="team foo">
                            <div class="team__inner">
                                <div class="team__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/team/4.jpg" alt="team image">
                                </div>
                                <div class="team__hover__info">
                                    <ul class="team__social__link">
                                        <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>

                                        <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team__details">
                                <h2><a href="#">MARK TAYLOR</a></h2>
                                <h4>Chief Engineer</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text__shape">
            <h2>TEAM</h2>
        </div>
    </section>
    <div class="htc__contact__address add-res bg__cat--1 >
        <div class="container >
            <div class="row">
                <div class="col-md-12">
                    <div class="htc__contact__wrap clearfix">

                        <div class="ht__address__inner">
                            <div class="ht__address__icon map-pin">
                                <i class="zmdi zmdi-pin"></i>
                            </div>
                            <div class="ht__address__details">
                                <p>Stock Building, 125 Main Street <br>1st Lane, San Francisco, USA</p>
                            </div>
                        </div>

                        <div class="ht__address__inner">
                            <div class="ht__address__icon glob">
                                <i class="fa fa-globe" aria-hidden="true"></i>
                            </div>
                            <div class="ht__address__details">
                                <p><a href="#">info@example.com</a></p>
                                <p><a href="#">www.example.com</a></p>
                            </div>
                        </div>

                        <div class="ht__address__inner">
                            <div class="ht__address__icon">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="ht__address__details">
                                <p><a href="#">(001) 24568 365 987</a></p>
                                <p><a href="#">(001) 65897 569 784</a></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
    </div>
</div>
</body>
        </div>

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
