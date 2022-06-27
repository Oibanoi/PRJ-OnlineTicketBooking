<%-- 
    Document   : view
    Created on : Jun 21, 2022, 9:41:05 PM
    Author     : Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết phim</title>
        <link rel="stylesheet" href="./assets/css/style.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body>
        <c:set var="ad" value="${sessionScope.account}"/>
        <div id="user">
            <c:if test="${ad==null}">
                <ul id="user-nav">
                    <li><a href="login" >Đăng nhập</a></li>
                    <li><a href="signup" >Đăng kí</a></li>
                </ul>
            </c:if>
            <c:if test="${ad!=null}">
                <div id="user-info">
                    Hello ${ad.name}              
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
        <div class="content">
            <c:set var="p" value="${requestScope.movie}"/>

        <h1 style="margin-top: 66px; text-align: center">${p.filmID}</h1>
        <div style="width: 30%; float: left;">
            <img src="movie/image?name=${p.image}" width="auto" height="auto" style="display: block;margin-left: auto; margin-right: auto;"/>
        </div>

        <div style="width: 55%; float: left">
            ${p.information}
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
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
