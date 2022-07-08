<%-- 
    Document   : statistic
    Created on : Jul 7, 2022, 9:50:17 AM
    Author     : Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <body>
        <h1>Tổng doanh thu tháng: ${requestScope.sum}</h1>
        <div style="width: 40%; text-align: center">
            <h1>Doanh thu từng phim</h1>
            <canvas id="myChart"></canvas>
        </div>
        <script>
            const data = {
            labels: [
            <c:forEach items="${requestScope.list}" var="i">
            '${i.filmID}',
            </c:forEach>
            ],
                    datasets: [{
                    label: 'My First Dataset',
                            data: [
            <c:forEach items="${requestScope.list}" var="i">
                ${i.sumturnover},
            </c:forEach>
                            0],
                            backgroundColor: [
                                    'rgb(255, 99, 132)',
                                    'rgb(54, 162, 235)',
                                    '#00ffff',
                                    '#0000ff',
                                    '#ff00ff',
                                    '#ff0000',
                                    '#ffff00',
                                    '#00cc00'
                            ],
                            hoverOffset: 4
                    }]
            };
            const config = {
            type: 'pie',
                    data: data,
            };
            const myChart = new Chart(
                    document.getElementById('myChart'),
                    config
                    );
        </script>
    </body>

</html>
