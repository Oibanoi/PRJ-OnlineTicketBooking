<%-- 
    Document   : home
    Created on : Jun 15, 2022, 10:01:55 AM
    Author     : Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
        <link rel="stylesheet" href="./assets/css/style.css"/>
        <script src="./add/ckeditor/ckeditor.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body>
        <c:set var="ad" value="${sessionScope.account}"/>
        <div id="user">
                        <div class="search-bar">
                            <form action="search" class="search-form">
                                <input type="text" placeholder="search film" name="film">
                                <button type="submit"><img src="./assets/images/free-search-icon-2911-thumb.png" /></button>
                            </form>
                        </div>
            <c:if test="${ad==null}">
                <ul id="user-nav">
                    <li><a href="login" >Đăng nhập</a></li>
                    <li><a href="signup" >Đăng kí</a></li>
                </ul>
            </c:if>
            <c:if test="${ad!=null}">
                <div id="user-info">
                    Hello <a href="changein4?id=${ad.userID}" style="padding: 0 10px;text-decoration: none;color: white">${ad.name}   </a>         
                    <a href="changepass" style="padding: 0 10px;text-decoration: none;color: white">Đổi mật khẩu</a>
                    <a style="color: white;text-decoration: none" href="logout" >Đăng xuất</a>
                    <c:if test="${ad.role==1}">
                        <a style="color: white;text-decoration: none" href="addfilm" >Thêm phim</a>
                    </c:if>
                </div>
            </c:if>


        </div>
        <div id="header">
            <ul id="nav">
                <li><a href="#" >Phim hot</a></li>
                <li><a href="#" >Lịch chiếu phim</a></li>
                <li><a href="#" >Thông tin và ưu đãi</a></li>
                <li><a href="#" >Giá vé</a></li>
            </ul>

        </div>
        <div class="slider-frame">
            <div class="slide-images">
                <div class="img-container">
                    <img src="./assets/images/emvatrinh.jpg">
                </div>
                <div class="img-container">
                    <img src="./assets/images/minion.jpg">
                </div>
                <div class="img-container">
                    <img src="./assets/images/sathu.jpg">
                </div>
            </div>
        </div>
        <div id="content">
            <h2 class="content-heading">Phim đang chiếu</h2>
            <h3>${requestScope.error}</h3>
            <div class="filmlist">
                <c:forEach items="${requestScope.data}" var="p">
                    <div class="movie">
                        <a href="view?id=${p.filmID}"><img src="movie/image?name=${p.image}" width="100" height="200" /></a>

                        <p>${p.filmID}</p>
                    </div> 
                </c:forEach>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>company</h4>
                        <ul>
                            <li><a href="#">about us</a></li>
                            <li><a href="#">our services</a></li>
                            <li><a href="#">privacy policy</a></li>
                            <li><a href="#">affiliate program</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>get help</h4>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">shipping</a></li>
                            <li><a href="#">returns</a></li>
                            <li><a href="#">order status</a></li>
                            <li><a href="#">payment options</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>online shop</h4>
                        <ul>
                            <li><a href="#">watch</a></li>
                            <li><a href="#">bag</a></li>
                            <li><a href="#">shoes</a></li>
                            <li><a href="#">dress</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>follow us</h4>
                        <div class="social-links">
                            <a href="https://www.facebook.com/pbhuu.99/"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="https://www.instagram.com/pbhuu2002/"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </body>
</html>
