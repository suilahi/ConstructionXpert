<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js" lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Single Project || Simply Construction </title>
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
                                        <li><a href="single-project.jsp">Single Project</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                        <div class="mobile-menu clearfix visible-xs visible-sm">
                            <nav id="mobile_dropdown">
                                <ul>
                                    <li><a href="index.jsp">Home</a> </li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>
                <div class="mobile-menu-area"></div>
            </div>
        </div>
        <!-- End Mainmenu Area -->
    </div>
    <!-- End Service Area -->
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
    <ul class="footer__instagram">
        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/1.jpg" alt="images"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/2.jpg" alt="images"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/3.jpg" alt="images"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/4.jpg" alt="images"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/5.jpg" alt="images"></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/assets/images/blog/sm-img/6.jpg" alt="images"></a></li>
    </ul>
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