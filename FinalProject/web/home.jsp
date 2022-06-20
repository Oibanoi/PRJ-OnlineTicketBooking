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
        <style>
            #wrapper{
                font-family: arial;
                margin-left: 10%;
                margin-right: 10%;
            }
            h3{
                text-align: left;
                color: blue;
            }
            ul{
                list-style: none;
            }
            li.movie{
                width: 25%;
                text-align: center;
                float: left;
                margin: 25px;
                border: 2px solid chocolate;
                border-radius: 20px;
            }
            li img{
                width: 90%;
                height: 90%;
            }
            li a{
                text-decoration: none;
            }
            li:hover{
                background: bisque;
            }
            p{
                margin: 5px;
                color: blue;
                font-size: 12px;
            }
            .old{
                text-decoration: line-through;
                color: red;
            }
        </style>
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
                <c:forEach items="${requestScope.data}" var="p">
                    <li class="movie">
                        
                        <img src="movie/image?name=${p.image}" width="100" height="200" />
                        <p>${p.filmID}</p>
                    </li> 
                </c:forEach>

            </ul>
        </div>
        <div id="footer">

        </div>
    </body>
</html>
