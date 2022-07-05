<%-- 
    Document   : booking
    Created on : Jul 3, 2022, 9:38:10 AM
    Author     : Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./assets/css/stylebooking.css"/>
    </head>
    <body>
        
        <div class="movie-container">
            <label> Booking ticket of movie:${requestScope.movie.filmID}</label><br/>
            <c:set var="sc" value="${requestScope.sc}"/>
            <p> Ngày: ${sc.day}</p>
            <p> Giờ: ${sc.startTime}-${sc.endTime}</p>
            <ul class="showcase">
                <li>
                    <input type="checkbox" class="seat">
                    <!--<div class="seat"></div>-->
                    <small>Available</small>
                </li>
                <li>
                    <input type="checkbox" class="seat" checked>
                    <!--                    <div class="seat selected"></div>-->
                    <small>Selected</small>
                </li>
                <li>
                    <input type="checkbox" class="seat" checked disabled>
                    <!--<div class="seat sold"></div>-->
                    <small>Sold</small>
                </li>
            </ul>
        </div>
        <div class="container">
            <div class="screen"></div>
            <form action="booking" method="POST">
                <div class="row">
                    <input type="checkbox" class="seat" name="seat" value="A1">
                    <input type="checkbox" class="seat" name="seat" value="A2">
                    <input type="checkbox" class="seat" name="seat" value="A3">
                    <input type="checkbox" class="seat" name="seat" value="A4">
                    <input type="checkbox" class="seat" name="seat" value="A5">
                    <input type="checkbox" class="seat" name="seat" value="A6">
                    <input type="checkbox" class="seat" name="seat" value="A7">
                    <input type="checkbox" class="seat" name="seat" value="A8">
                </div>
                <div class="row">
                    <input type="checkbox" class="seat" name="seat" value="B1">
                    <input type="checkbox" class="seat" name="seat" value="B2">
                    <input type="checkbox" class="seat" name="seat" value="B3">
                    <input type="checkbox" class="seat" name="seat" value="B4">
                    <input type="checkbox" class="seat" name="seat" value="B5">
                    <input type="checkbox" class="seat" name="seat" value="B6">
                    <input type="checkbox" class="seat" name="seat" value="B7">
                    <input type="checkbox" class="seat" name="seat" value="B8">
                </div>
                <div class="row">
                    <input type="checkbox" class="seat" name="seat" value="C1">
                    <input type="checkbox" class="seat" name="seat" value="C2">
                    <input type="checkbox" class="seat" name="seat" value="C3">
                    <input type="checkbox" class="seat" name="seat" value="C4">
                    <input type="checkbox" class="seat" name="seat" value="C5">
                    <input type="checkbox" class="seat" name="seat" value="C6">
                    <input type="checkbox" class="seat" name="seat" value="C7">
                    <input type="checkbox" class="seat" name="seat" value="C8">
                </div>
                <div class="row">
                    <input type="checkbox" class="seat" name="seat" value="D1">
                    <input type="checkbox" class="seat" name="seat" value="D2">
                    <input type="checkbox" class="seat" name="seat" value="D3">
                    <input type="checkbox" class="seat" name="seat" value="D4">
                    <input type="checkbox" class="seat" name="seat" value="D5">
                    <input type="checkbox" class="seat" name="seat" value="D6">
                    <input type="checkbox" class="seat" name="seat" value="D7">
                    <input type="checkbox" class="seat" name="seat" value="D8">
                </div>
                <div class="row">
                    <input type="checkbox" class="seat" name="seat" value="E1">
                    <input type="checkbox" class="seat" name="seat" value="E2">
                    <input type="checkbox" class="seat" name="seat" value="E3">
                    <input type="checkbox" class="seat" name="seat" value="E4">
                    <input type="checkbox" class="seat" name="seat" value="E5">
                    <input type="checkbox" class="seat" name="seat" value="E6">
                    <input type="checkbox" class="seat" name="seat" value="E7">
                    <input type="checkbox" class="seat" name="seat" value="E8">
                </div>
                <div class="row">
                    <input type="checkbox" class="seat" name="seat" value="F1">
                    <input type="checkbox" class="seat" name="seat" value="F2">
                    <input type="checkbox" class="seat" name="seat" value="F3">
                    <input type="checkbox" class="seat" name="seat" value="F4">
                    <input type="checkbox" class="seat" name="seat" value="F5">
                    <input type="checkbox" class="seat" name="seat" value="F6">
                    <input type="checkbox" class="seat" name="seat" value="F7">
                    <input type="checkbox" class="seat" name="seat" value="F8">
                </div>
                <input type="text" name="sid" value="${sc.SID}" hidden>
                <input type="submit" value="book tickets" style="width: 100%;height: 40px;font-size: 15px; margin-top: 20px;"/>
            </form>

        </div>
    </body>
</html>
