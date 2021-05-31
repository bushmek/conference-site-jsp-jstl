<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SBC | Конференції</title>

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
                        <h2>Профіль користувача</h2>
                        <p></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h3>Список ваших конференцій:</h3>
                    <c:if test="${conferences==null}">
                        <p>В вас не має створених конференцій</p>
                    </c:if>
                    <c:if test="${conferences!=null }">
                    <c:forEach var = "conf" items="${conferences}">
                        <p ><a href="./Confirm?confid=${conf.id}" class="badge badge-success">${conf.name}</a></p>
                    </c:forEach>
                        </div>
                    <div class="jumbotron">
                    </c:if>
                    <h3>Список конференцій, на які ви зареєстровані:</h3>
                    <c:forEach var = "tese" items="${teses}">
                    	<c:if test="${tese.status==2}">
                        <p><a href="" class="badge badge-success">${tese.name}</a></p>
                        </c:if>
                        <c:if test="${tese.status==0}">
                        <p><a href="" class="badge badge-danger">${tese.name}</a></p>
                        </c:if>
                        <c:if test="${tese.status==1}">
                        <p><a href="" class="badge badge-secondary">${tese.name}</a></p>
                        </c:if>
                    </c:forEach>
                </div>
                </div>
            <br>
            <br> 
            <br>     
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

                        <form action="./CreateConference" method="POST">
                            <div class="form-group">
                              <label >Назва</label>
                              <input type="text" class="form-control"placeholder="..." required name="name">
                              <small id="emailHelp" class="form-text text-muted">Повна назва конференції</small>
                            </div>
                            <div class="form-group">
                                <label>Категорія</label>
                                <select class="form-control" name="category">
                                  <option value="science">Наука</option>
                                  <option value = "psy">Психологія</option>
                                  <option value = "mastur">Саморозвиток</option>
                                  <option value="prog">Програмування</option>
                                  <option value="agrar">Аграрія</option>
                                </select>
                              </div>
                            <div class="form-group">
                                <label >Опис</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="description" required></textarea>
                                <small id="emailHelp" class="form-text text-muted">Короткий опис конференції</small>
                              </div>
                              <div class="form-group">
                                <label >Початок конференції</label>
                                <input type="date" name="startDate" required>                                 
                              </div>
                              <div class="form-group">
                                <label >Кінець конференції</label>
                                <input type="date" name="endDate" required>                                 
                              </div>
                              <div class="form-group">
                                <label >Посилання на зображення</label>
                                <input type="text" class="form-control"placeholder="https://..." required name="photo">
                                <small id="emailHelp" class="form-text text-muted">Повне посилання на зображення, яке буде використане на сайті</small>
                              </div>
                              <button href="#" class="primary-btn" type="submit" value="Створити" >Створити конференцію</button>
                          </form>

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