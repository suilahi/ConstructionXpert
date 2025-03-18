<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 18/03/2025
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About Us || Simply Construction HTML5 Template</title>
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
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Body main wrapper start -->
<div class="wrapper">
    <!-- Start Header Style -->
    <div id="header" class="htc-header">
        <!-- Start Header Top -->
        <div class="htc__header__top bg__cat--1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                        <ul class="heaher__top__left">
                            <li><i class="fa fa-clock-o"></i>7.30 AM  -  9.30 PM</li>
                            <li><a href="#"><i class="fa fa-phone"></i>(001)  25465  258  369</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                        <div class="header__top__right">
                            <ul class="login-register">
                                <li><a href="login-register.html">LOGIN</a></li>
                                <li class="separator">/</li>
                                <li><a href="login-register.html">REGISTER</a></li>
                            </ul>
                            <div class="heaher__top__btn">
                                <a href="#">Buy Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header Top -->
        <!-- Start Mainmenu Area -->
        <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-6 col-xs-7">
                        <div class="logo">
                            <a href="index.html">
                                <img src="${pageContext.request.contextPath}/resources/assets/images/logo/sinply-construction.png" alt="logo image">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-5">
                        <nav class="main__menu__nav  hidden-xs hidden-sm">
                            <ul class="main__menu">
                                <li class="drop"><a href="Projet.jsp">HOME</a></li>
                                <li><a href="About.jsp">ABOUT</a></li>
                                <li><a href="service.html">SERVICES</a></li>
                                <li class="drop"><a href="#">pages</a>
                                    <ul class="dropdown">
                                        <li><a href="service.html">service</a></li>
                                        <li><a href="single-service.html">Single service</a></li>
                                        <li><a href="projects-one.html">projects one</a></li>
                                        <li><a href="projects-two.html">projects two</a></li>
                                        <li><a href="projects-three.html">projects three</a></li>
                                        <li><a href="single-project.html">Single Project</a></li>
                                        <li><a href="blog.html">BLog</a></li>
                                        <li><a href="blog-one-column.html">blog one column</a></li>
                                        <li><a href="blog-two-column.html">blog two column</a></li>
                                        <li><a href="blog-details.html">blog Details</a></li>
                                        <li><a href="login-register.html">Log in & Register</a></li>
                                    </ul>
                                </li>
                                <li class="drop"><a href="#">PROJECTS</a>
                                    <ul class="dropdown">
                                        <li><a href="projects-one.html">projects one</a></li>
                                        <li><a href="projects-two.html">projects two</a></li>
                                        <li><a href="projects-three.html">projects three</a></li>
                                    </ul>
                                </li>
                                <li class="drop"><a href="blog.html">BLOG</a>
                                    <ul class="dropdown">
                                        <li><a href="blog.html">BLog</a></li>
                                        <li><a href="blog-one-column.html">blog one column</a></li>
                                        <li><a href="blog-two-column.html">blog two column</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">CONTACT</a></li>
                            </ul>
                        </nav>
                        <div class="mobile-menu clearfix visible-xs visible-sm">
                            <nav id="mobile_dropdown">
                                <ul>
                                    <li><a href="index.html">Home</a>
                                        <ul>
                                            <li><a href="index.html">Home 01</a></li>
                                            <li><a href="index-2.html">Home 02</a></li>
                                            <li><a href="index-3.html">Home 03</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.html">ABOUT</a></li>
                                    <li><a href="#">PROJECTS</a>
                                        <ul>
                                            <li><a href="projects-one.html">projects one</a></li>
                                            <li><a href="projects-two.html">projects two</a></li>
                                            <li><a href="projects-three.html">projects three</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">pages</a>
                                        <ul>
                                            <li><a href="service.html">service</a></li>
                                            <li><a href="single-service.html">Single service</a></li>
                                            <li><a href="projects-one.html">projects one</a></li>
                                            <li><a href="projects-two.html">projects two</a></li>
                                            <li><a href="projects-three.html">projects three</a></li>
                                            <li><a href="single-project.html">Single Project</a></li>
                                            <li><a href="blog.html">BLog</a></li>
                                            <li><a href="blog-one-column.html">blog one column</a></li>
                                            <li><a href="blog-two-column.html">blog two column</a></li>
                                            <li><a href="blog-details.html">blog Details</a></li>
                                            <li><a href="login-register.html">Log in & Register</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="blog.html">blog</a>
                                        <ul>
                                            <li><a href="blog.html">BLog</a></li>
                                            <li><a href="blog-one-column.html">blog one column</a></li>
                                            <li><a href="blog-two-column.html">blog two column</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">contact</a></li>
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
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area" data--black__overlay="6" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/resources/assets/images/bg/5.jpg) no-repeat scroll center center / cover ;">
        <div class="ht__bradcaump__wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="bradcaump__inner text-center">
                            <h2 class="bradcaump-title">About Us</h2>
                            <nav class="bradcaump-inner">
                                <a class="breadcrumb-item" href="index.html">Home</a>
                                <span class="brd-separetor">-</span>
                                <span class="breadcrumb-item active">About Us</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Construction Area -->
    <section class="htc__best__construction ptb--150">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="htc__bst__construc">
                        <div class="section__title text-center">
                            <h2 class="title__line">BEST <span class="text--theme">CONSTRUCTION</span> THEME</h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire consectetur adipiscing</p>
                        </div>
                        <div class="htc__bst__btn text-center mt--30">
                            <a class="htc__btn" href="contact.html">BUY NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Construction Area -->
    <!-- Start Offer Area -->
    <section class="htc__mission__area bg__gray">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-lg-5 col-sm-7 col-xs-12">
                    <div class="htc__mission__container">
                        <div class="single__mission">
                            <h2>WHAT WE LOVE TO DO</h2>
                            <p>On the other hand, we denounce with righteous indignation quasi architecto beatae vitae dicta  beguiled and demoralized by the of pleasure of the moment, so blinded by desire, that they cannot led and demoralized by the charms of pleasure of the moment</p>
                        </div>
                        <div class="single__mission">
                            <h2>OUR MISSION</h2>
                            <p>On the other hand, we denounce with righteous indignation quasi architecto beatae vitae dicta  beguiled and demoralized by the of pleasure of the moment, so blinded by desire</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="htc__offer__thumb">
            <div class="htc__offer__thumb__inner">
                <img src="${pageContext.request.contextPath}/resources/assets/images/about/1.jpg" alt="offer img">
            </div>
        </div>
    </section>
    <!-- End Offer Area -->
    <!-- Start Offer Area -->
    <section class="htc__offer__area ptb--150 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="offer">
                        <div class="offer__icon">
                            <img src="${pageContext.request.contextPath}/resources/assets/images/others/icon-2/1.png" alt="icon images">
                        </div>
                        <div class="offer__details">
                            <h2><a href="#">TOP RATED</a></h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are</p>
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
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are</p>
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
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Offer Area -->
    <!-- Start Team Area -->
    <section class="htc__team__area pb--120 bg__white">
        <div class="htc__team__container">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title text-center">
                            <h2 class="title__line">OUR <span class="text--theme">TEAM</span></h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire</p>
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
                        <!-- End Single Team -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Team Area -->
    <!-- Start Testimonial Area -->
    <section class="htc__testimonial__area ptb--130" data--gray__overlay="9" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/resources/assets/images/bg/1.jpg) no-repeat fixed center center / cover ;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-5 col-sm-12 col-xs-12">
                    <div class="htc__testimonial__wrap">
                        <div class="section__title text-left">
                            <h2 class="title__line">CLIENTS <span class="text--theme">SAYS</span></h2>
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasur</p>
                        </div>
                        <div class="testimonial__activation clearfix">
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/test/client/1.jpg" alt="clint image">
                                </div>
                                <div class="testimonial__details">
                                    <div class="tes__icon">
                                        <i class="fa fa-quote-right"></i>
                                    </div>
                                    <p>On the other hand, we denounce with righteous indignation and the tdislike men who are beguiled </p>
                                    <h2><a href="#">Ken Williams</a></h2>
                                    <h4>CEO, Alves</h4>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/test/client/1.jpg" alt="clint image">
                                </div>
                                <div class="testimonial__details">
                                    <div class="tes__icon">
                                        <i class="fa fa-quote-right"></i>
                                    </div>
                                    <p>On the other hand, we denounce with righteous indignation and the tdislike men who are beguiled </p>
                                    <h2><a href="#">Ken Williams</a></h2>
                                    <h4>CEO, Alves</h4>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/test/client/1.jpg" alt="clint image">
                                </div>
                                <div class="testimonial__details">
                                    <div class="tes__icon">
                                        <i class="fa fa-quote-right"></i>
                                    </div>
                                    <p>On the other hand, we denounce with righteous indignation and the tdislike men who are beguiled </p>
                                    <h2><a href="#">Ken Williams</a></h2>
                                    <h4>CEO, Alves</h4>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </section>
    <!-- End Testimonial Area -->
    <!-- Start Counter Up Area -->
    <section class="htc__counterup__area ptb--50" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/resources/assets/images/bg/3.jpg) no-repeat scroll center center / cover ;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="htc__counterup__wrap">
                        <!-- Start Single Fact -->
                        <div class="funfact">
                            <div class="fact__details">
                                <div class="funfact__count__inner">
                                    <div class="fact__count ">
                                        <span class="count">598</span>
                                    </div>
                                </div>
                                <div class="fact__title">
                                    <h2>PROJECTS</h2>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Fact -->
                        <!-- Start Single Fact -->
                        <div class="funfact">
                            <div class="fact__details">
                                <div class="funfact__count__inner">
                                    <div class="fact__count ">
                                        <span class="count">128</span>
                                    </div>
                                </div>
                                <div class="fact__title">
                                    <h2>CLIENTS</h2>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Fact -->
                        <!-- Start Single Fact -->
                        <div class="funfact">
                            <div class="fact__details">
                                <div class="funfact__count__inner">
                                    <div class="fact__count ">
                                        <span class="count">339</span>
                                    </div>
                                </div>
                                <div class="fact__title">
                                    <h2>SUCCESS</h2>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Fact -->
                        <!-- Start Single Fact -->
                        <div class="funfact">
                            <div class="fact__details">
                                <div class="funfact__count__inner">
                                    <div class="fact__count ">
                                        <span class="count">109</span>
                                    </div>
                                </div>
                                <div class="fact__title">
                                    <h2>AWARDS</h2>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Fact -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Counter Up Area -->
    <!-- Start Brand Area -->
    <div class="htc__brand__area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <ul class="brand__list">
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/brand/1.jpg" alt="brand images"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/brand/2.jpg" alt="brand images"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/brand/3.jpg" alt="brand images"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/brand/4.jpg" alt="brand images"></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/brand/5.jpg" alt="brand images"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Brand Area -->
    <!-- Start Newsletter Area -->
    <section class="htc__newsletter__area ptb--90 bg__gray">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="newsletter__wrap">
                        <h2 class="title__line">SUBSCRIBE <span class="text--theme">NEWSLETTER</span></h2>
                        <h4>Subscribe our newsletter and get latest update</h4>
                        <div class="newsletter__form">
                            <div class="input__box">
                                <div id="mc_embed_signup">
                                    <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                        <div id="mc_embed_signup_scroll" class="htc__news__inner">
                                            <div class="news__input">
                                                <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Email Address" required>
                                            </div>
                                            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                            <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div>
                                            <div class="clearfix subscribe__btn"><input type="submit" value="SUBSCRIBE NOW" name="subscribe" id="mc-embedded-subscribe" class="bst__btn btn--white__color">

                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="newsletter__thumb">
            <div class="newsletter__thumb__inner">
                <img src="${pageContext.request.contextPath}/resources/assets/images/others/1.png" alt="newsletter img">
            </div>
        </div>
    </section>
    <!-- End Newsletter Area -->
    <!-- Start Contact Address -->
    <div class="htc__contact__address add-res bg__cat--1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="htc__contact__wrap clearfix">
                        <!-- Start Single Address -->
                        <div class="ht__address__inner">
                            <div class="ht__address__icon map-pin">
                                <i class="zmdi zmdi-pin"></i>
                            </div>
                            <div class="ht__address__details">
                                <p>Stock Building, 125 Main Street <br>1st Lane, San Francisco, USA</p>
                            </div>
                        </div>
                        <!-- End Single Address -->
                        <!-- Start Single Address -->
                        <div class="ht__address__inner">
                            <div class="ht__address__icon glob">
                                <i class="fa fa-globe" aria-hidden="true"></i>
                            </div>
                            <div class="ht__address__details">
                                <p><a href="#">info@example.com</a></p>
                                <p><a href="#">www.example.com</a></p>
                            </div>
                        </div>
                        <!-- End Single Address -->
                        <!-- Start Single Address -->
                        <div class="ht__address__inner">
                            <div class="ht__address__icon">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="ht__address__details">
                                <p><a href="#">(001) 24568 365 987</a></p>
                                <p><a href="#">(001) 65897 569 784</a></p>
                            </div>
                        </div>
                        <!-- End Single Address -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Contact Address -->
    <!-- Start Footer Area -->
    <footer class="htc__footer__area">
        <div class="footer__top ptb--130" data--1f2d30__overlay="9.5" style="background: rgba(0, 0, 0, 0) url(${pageContext.request.contextPath}/resources/assets/images/bg/2.jpg) no-repeat fixed center center / cover ;">
            <div class="container">
                <div class="row">
                    <div class="htc__footer__wrap clearfix">
                        <!-- Start Single Footer -->
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                            <div class="footer">
                                <div class="footer__widget">
                                    <h2 class="ft__title">ABOUT</h2>
                                </div>
                                <div class="ft__details">
                                    <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled demoralized On the other hand, we denounce </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                        <!-- Start Single Footer -->
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 xmt-40">
                            <div class="footer quick__link">
                                <div class="footer__widget">
                                    <h2 class="ft__title">QUICK LINKS</h2>
                                </div>
                                <div class="footer__link">
                                    <ul class="ft__menu">
                                        <li><a href="service.html">Services</a></li>
                                        <li><a href="projects-one.html">Projects</a></li>
                                        <li><a href="#">Features</a></li>
                                        <li><a href="blog.html">blog</a></li>
                                    </ul>
                                    <ul class="ft__menu">
                                        <li><a href="#">Quote</a></li>
                                        <li><a href="projects-one.html">Projects</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="#">Features</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                        <!-- Start Single Footer -->
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 smt-40 xmt-40">
                            <div class="footer">
                                <div class="footer__widget">
                                    <h2 class="ft__title">INSTAGRAM</h2>
                                </div>
                                <ul class="footer__instagram">
                                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/1.jpg" alt="images"></a></li>
                                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/2.jpg" alt="images"></a></li>
                                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/3.jpg" alt="images"></a></li>
                                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/4.jpg" alt="images"></a></li>
                                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/5.jpg" alt="images"></a></li>
                                    <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/6.jpg" alt="images"></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                        <!-- Start Single Footer -->
                        <div class="col-md-3 col-lg-2 col-lg-offset-1 col-sm-6 col-xs-12 smt-40 xmt-40">
                            <div class="footer">
                                <div class="footer__widget">
                                    <h2 class="ft__title">INQUARY</h2>
                                    <div class="footer__link">
                                        <ul class="ft__menu">
                                            <li><a href="#">Construction</a></li>
                                            <li><a href="#">Architecture</a></li>
                                            <li><a href="#">Plambing</a></li>
                                            <li><a href="#">Plambing</a></li>
                                        </ul>
                                        <ul class="ft__menu">
                                            <li><a href="#">Painting</a></li>
                                            <li><a href="#">Roofing</a></li>
                                            <li><a href="#">Plambing</a></li>
                                            <li><a href="#">Features</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer -->
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright bg__theme">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="copyright__inner">
                            <p>Copyright <a href="#" target="_blank">Devitems</a>
                                All Rights Reserved 2017</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer Area -->
</div>
<!-- Body main wrapper end -->

<!-- Placed js at the end of the document so the pages load faster -->

<!-- jquery latest version -->
<script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="${pageContext.request.contextPath}/resources/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
<!-- Waypoints.min.js. -->
<script src="${pageContext.request.contextPath}/resources/assets/js/waypoints.min.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

</body>



</html>