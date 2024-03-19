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
                                <li class="active">
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
                                    <li>
                                        <a href="account">Account</a>
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
                                    <h1>About <em>our</em> Restaurant</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div id="fh5co-about" class="fh5co-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-pull-4 img-wrap animate-box" data-animate-effect="fadeInLeft">
                            <img src="images/hero_1.jpeg" alt="Free Restaurant Bootstrap Website Template by FreeHTML5.co">
                        </div>
                        <div class="col-md-5 col-md-push-1 animate-box">
                            <div class="section-heading">
                                <h2>The Restaurant</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae neque quisquam at deserunt ab praesentium architecto tempore saepe animi voluptatem molestias, eveniet aut laudantium alias, laboriosam excepturi, et numquam? Atque tempore iure tenetur perspiciatis, aliquam, asperiores aut odio accusamus, unde libero dignissimos quod aliquid neque et illo vero nesciunt. Sunt!</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam iure reprehenderit nihil nobis laboriosam beatae assumenda tempore, magni ducimus abentey.</p>
                                <p><a href="#" class="btn btn-primary btn-outline">Our History</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="fh5co-timeline">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-md-offset-0">
                            <ul class="timeline animate-box">
                                <li class="timeline-heading text-center animate-box">
                                    <div><h3>Our Experience</h3></div>
                                </li>
                                <li class="animate-box timeline-unverted">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">The Founders Meet</h3>

                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted animate-box">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">Create A Restaurant</h3>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="animate-box timeline-unverted">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">Added 200+ Employees</h3>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                        </div>
                                    </div>
                                </li>

                                <br>
                                <li class="timeline-heading text-center animate-box">
                                    <div><h3>More Restaurants Outlet</h3></div>
                                </li>
                                <li class="timeline-inverted animate-box">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">Stablished Restaurant in Europe</h3>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="animate-box timeline-unverted">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">Franchise Restaurants Brooklyn</h3>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted animate-box">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">Added 100K More Employees</h3>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="animate-box timeline-unverted">
                                    <div class="timeline-badge"><i class="icon-genius"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h3 class="timeline-title">Stablished Marketing</h3>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div id="fh5co-featured-testimony" class="fh5co-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 fh5co-heading">
                            <h2>Testimony</h2>
                            <div class="row">
                                <div class="col-md-6">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ab debitis sit itaque totam, a maiores nihil, nulla magnam porro minima officiis! Doloribus aliquam voluptates corporis et tempora consequuntur ipsam, itaque, nesciunt similique commodi omnis.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5 animate-box img-to-responsive">
                            <img src="images/person_1.jpg" alt="">
                        </div>
                        <div class="col-md-7 animate-box">
                            <blockquote>
                                <p> &ldquo; Quantum ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ab debitis sit itaque totam, a maiores nihil, nulla magnam porro minima officiis! Doloribus aliquam voluptates corporis et tempora consequuntur ipsam. &rdquo;</p>
                                <p class="author"><cite>&mdash; Jane Smith</cite></p>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>


            <div id="fh5co-started" class="fh5co-section animate-box" style="background-image: url(images/hero_1.jpeg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row animate-box">
                        <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                            <h2>Book a Table</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae enim quae vitae cupiditate, sequi quam ea id dolor reiciendis consectetur repudiandae. Rem quam, repellendus veniam ipsa fuga maxime odio? Eaque!</p>
                            <p><a href="reservation" class="btn btn-primary btn-outline">Book Now</a></p>
                        </div>
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

