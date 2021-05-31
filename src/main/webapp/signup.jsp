<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SBC | Реєстрація</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Quantico:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
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



    <!-- Pricing Section Begin -->
    <section class="pricing-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title pricing-title">
                        <h2>Реєстрація</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-6">
                    <div class="pricing-item">
                        <div class="pi-price">
                            <h2></h2>
                            <span></span>
                        </div>
                        <div class="pi-title">
                            <h3>Введіть інформацію:</h3>
                        </div>
                        <br>
                        <form action="./SignUp" method="POST">
                            <div class="form-group">
                              <label >Введіть ім'я</label>
                              <input type="text" class="form-control"placeholder="..." required name="name">
                              
                            </div>
                            <div class="form-group">
                                <label >Введіть логін</label>
                                <input type="login" class="form-control"placeholder="..." required name="login">
                                
                              </div>
                              <div class="form-group">
                                <label >Введіть пароль</label>
                                <input type="password" class="form-control"placeholder="******" required name="pass">
                                
                              </div>
                            <div class="form-group">
                                <label >Введіть емайл</label>
                                <input type="email" class="form-control"placeholder="...@gmail.com" required name="email">
                                
                              </div>
                              <button href="#" class="primary-btn" type="submit" value="Створити" >Зареєструватись</button>
                          </form>
							<p>${msg}</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- Pricing Section End -->


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