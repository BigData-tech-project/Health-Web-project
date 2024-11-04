<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>건강 데이터 시각화</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <h1>건강 데이터 그래프</h1>
    <canvas id="healthChart" width="400" height="200"></canvas>

    <%
        Map<String, Object> healthData = (Map<String, Object>) request.getAttribute("healthData");
    %>

    <script>
        // JSP에서 전달된 healthData를 JavaScript 변수에 할당
        const healthData = {
            maxpressure: <%= healthData.get("maxpressure") %>,
            minpressure: <%= healthData.get("minpressure") %>,
            sugar: <%= healthData.get("sugar") %>,
            rate: <%= healthData.get("rate") %>,
            temp: <%= healthData.get("temp") %>,
            weight: <%= healthData.get("weight") %>
        };

        // Chart.js 데이터 설정
        const labels = ['최고 혈압', '최저 혈압', '혈당', '심박수', '체온', '체중'];
        const data = {
            labels: labels,
            datasets: [{
                label: '건강 지표',
                data: [healthData.maxpressure, healthData.minpressure, healthData.sugar, healthData.rate, healthData.temp, healthData.weight],
                fill: false,
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.1
            }]
        };

        const config = {
            type: 'line',
            data: data,
        };

        // Chart 생성
        const healthChart = new Chart(
            document.getElementById('healthChart'),
            config
        );
    </script>

    <a href="${pageContext.request.contextPath}/mypage">마이페이지로 돌아가기</a>
</body>
</html>
