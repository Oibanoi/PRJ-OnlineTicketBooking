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
        <div id="slider">
            
        </div>
        <div id="content">
            <ul>
                <c:forEach items="${requestScope.products}" var="p">
                   <li>
                    <a href="#"></a>
                    <img src="${p.image}" />
                    <p>${p.name}</p>
                    <p>Gia goc: <span class="old">${(p.price*3)}</span>VND</p>
                    <p>Gia ban:${p.price}VND</p>
                </li> 
                </c:forEach>
                
            </ul>
        </div>
        <div id="footer">

        </div>
    </body>
</html>
