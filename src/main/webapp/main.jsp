<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="ua">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SBC | Конференції</title>
    <link href="https://fonts.googleapis.com/css?family=Quantico:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>" type="text/css">
    <link rel="icon" href="img/logo.svg" type="image/x-icon"/>
</head>

<body>
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="logo">
                        <a href="./Fill">
                            <img src="img/logo.svg" alt="">
                        </a>
                    </div>
                    <nav class="nav-menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./Fill">Головна</a></li>
                            <li><a href="./about.html">Про нас</a></li>
                            <li><a href="./contact.html">Зв'язок</a></li>
                        </ul>
                    </nav>
                    <c:if test="${userId==null}">
                    <div class="top-search">
                    	<a href="./signup.jsp">
                        <i class="fa fa-user-plus "></i></a>                    
                    </div>
                    </c:if>
                    <c:if test="${userId==null}">
                    	<div class="top-search">
                    	 	<a href="./login.jsp">
                        	<i class="fa fa-sign-in"></i></a>                 
                    	</div>
                    </c:if>
                    <c:if test="${userId!=null}">
                    	<div class="top-search">
                    	 	<a href="./Logout">
                        	<i class="fa fa-sign-in"></i></a>                 
                    	</div>
                    </c:if>
                    <c:if test="${userId!=null}">
                    	<div class="top-search">
                        	<a href="./Profile">
                        	<i class="fa fa-user "></i> </a>
                    	</div>
                    </c:if>
                    <div id="mobile-menu-wrap"></div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hs-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="https://images.unsplash.com/photo-1540575467063-178a50c2df87?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hs-text">
                                <h2>Сайт конференцій</h2>
                                <p></p>
                                <a href="#konf" class="primary-btn">Переглянути конференції</a>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
            <div class="hs-item set-bg" data-setbg="https://variety.com/wp-content/uploads/2019/01/20181102_carlton-beener_blizzcon2018_awc_00490.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hs-text">
                                <h2>Сайт конференцій</h2>
                                <p></p>
                                <a href="./signup.jsp" class="primary-btn">Зареєструватись</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Services Section Begin -->
    <section class="services-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="services-item">
                        <img src="http://ki.ill.in.ua/m/670x450/24387850.jpg" alt="">
                        <h3>15+ спікерів</h3>
                        <p></p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="services-item">
                        <img src="https://cdn25.img.ria.ru/images/106834/75/1068347535_0:158:2102:1349_600x0_80_0_0_4465269bf34e30bc513287d51cdb2b60.jpg" alt="">
                        <h3>20+ конференцій</h3>
                        <p></p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="services-item">
                        <img src="https://i.ytimg.com/vi/TmCgJUl13mc/maxresdefault.jpg" alt="">
                        <h3>1000+ слухачів</h3>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <!-- Portfolio Section Begin -->
    <section class="portfolio-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title" id="konf">
                        <h2>Конференції</h2>
                    </div>
                    <div class="filter-controls">
                        <ul>
                            <li class="active" data-filter="*">Всі</li>
                            <li data-filter=".science">Наука</li>
                            <li data-filter=".psy">Психологія</li>
                            <li data-filter=".mastur">Саморозвиток</li>
                            <li data-filter=".prog">Програмування</li>
                            <li data-filter=".agrar">Аграрія</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 p-0">
                 <div class="portfolio-filter"> 
        <c:forEach var="conf" items="${conferences}">
						<a href="./OneConference?id=${conf.id}" class="pf-icon">
                           <div class="pf-item set-bg ${conf.category}" data-setbg="${conf.photo}"> <!-- category class -->
                                <div class="pf-text">
                                    <h4>${conf.name}</h4>
                                    <span>${conf.convertCategory}</span>
                                </div>
                            </div>
 							</a>
        </c:forEach>
         </div>
    </div>
        </div>
        </div>
        </section>

       
    </section>

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">

                <div class="col-lg-12">
                    <div class="copyright-text">
                        <p>
   &copy;<script>document.write(new Date().getFullYear());</script> SBC </a>
</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->



    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>