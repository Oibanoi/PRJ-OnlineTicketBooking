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
    </head>
    <body>
        <div id="user">
            <c:if test="${sessionScope.account==null}">
                <ul id="user-nav">
                    <li><a href="login" >Đăng nhập</a></li>
                    <li><a href="signup" >Đăng kí</a></li>
                </ul>
            </c:if>
            <c:if test="${sessionScope.account!=null}">
                <div id="user-info">
                    Hello ${sessionScope.account.name}              
                    <a style="color: white;text-decoration: none" href="logout" >Đăng xuất</a>
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

        </div>
        <div id="footer">

        </div>
    </body>
</html>
