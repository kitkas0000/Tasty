<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Tasty</title>
        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,600i,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">

        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Flexslider  -->
        <link rel="stylesheet" href="css/flexslider.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="css/style.css">

        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

        <div class="fh5co-loader"></div>

        <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <!-- <div class="top-menu"> -->
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-center logo-wrap">
                            <div id="fh5co-logo"><a href="home">Tasty<span>.</span></a></div>
                        </div>
                        <div class="col-xs-12 text-center menu-1 menu-wrap">
                            <ul>
                                <li><a href="home">Home</a></li>
                                <li>
                                    <a href="menu">Menu</a>
                                </li>
                                <li>
                                    <a href="gallery">Gallery</a>
                                </li>
                                <c:if test="${sessionScope.acc.isUser == 1}">
                                    <li>
                                        <a href="reservation">Reservation</a>
                                    </li>
                                </c:if>
                                <li>
                                    <a href="about">About</a>
                                </li>
                                <li>
                                    <a href="contact">Contact</a>
                                </li>
                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                    <li>
                                        <a href="manage">Manage Product</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.acc.isUser == 1}">
                                    <li>
                                        <a href="managereservation">Your Reservation</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.acc.isUser == 1}">
                                    <li>
                                        <a href="feedback">Feedback</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.acc.isUser == 1}">
                                    <li class="active">
                                        <a href="manageaccount">Account</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.acc != null}">
                                    <li>
                                        <a href="logout">Logout</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.acc == null}">
                                    <li>
                                        <a href="login">Login</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- </div> -->
            </nav>

            <header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner" style="background-image: url(images/hero_1.jpeg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div class="display-t js-fullheight">
                                <div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
                                    <h1>Account</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div id="fh5co-featured-menu" class="fh5co-section">
                <div class="container">
                    <div class="row">
                        <div class="text-center fh5co-heading animate-box">
                            <h2>My Account</h2>
                        </div>
                    </div>

                    <div class="col-md-6 col-md-push-3 col-sm-6 col-sm-push-3">
                        <c:forEach items="${rs}" var="a">
                            <form action="" id="form-wrap" method="post">
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label>Email: ${a.getEmail()}</label>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="many">Name: ${a.getName()}</label>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="many">Phone: ${a.getPhonenumber()}</label>
                                    </div>
                                    <div class="col-md-12">
                                        <a href="#" class="btn btn-primary btn-outline">Update</a>
                                        <a href="#" class="btn btn-primary btn-outline">Delete</a>
                                    </div>
                                </div>
                            </form>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <footer id="fh5co-footer" role="contentinfo" class="fh5co-section">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-4 fh5co-widget">
                            <h4>Tasty</h4>
                            <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
                        </div>
                        <div class="col-md-2 col-md-push-2 fh5co-widget">
                            <h4>Links</h4>
                            <ul class="fh5co-footer-links">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Portfolio</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">About</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4 col-md-push-4 fh5co-widget">
                            <h4>Contact Information</h4>
                            <ul class="fh5co-footer-links">
                                <li>198 West 21th Street, <br> Suite 721 New York NY 10016</li>
                                <li><a href="tel://1234567920">+ 1235 2355 98</a></li>
                                <li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="row copyright">
                        <div class="col-md-12 text-center">
                            <p>
                            <ul class="fh5co-social-icons">
                                <li><a href="#"><i class="icon-twitter2"></i></a></li>
                                <li><a href="#"><i class="icon-facebook2"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin2"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble2"></i></a></li>
                            </ul>
                            </p>
                        </div>
                    </div>

                </div>
            </footer>
        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up22"></i></a>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.stellar.min.js"></script>
        <!-- Flexslider -->
        <script src="js/jquery.flexslider-min.js"></script>
        <!-- Main -->
        <script src="js/main.js"></script>

    </body>
</html>

