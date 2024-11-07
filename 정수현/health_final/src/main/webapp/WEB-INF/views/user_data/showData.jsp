<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>건강 데이터 대시보드</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #4CAF50;
            display: inline-block;
        }
        .header-buttons {
            float: right;
            margin-top: 10px;
        }
        .header-buttons button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            margin-left: 10px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .header-buttons button:hover {
            background-color: #45a049;
        }
        .card {
            width: 45%;
            margin: 10px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
            vertical-align: top;
        }
        .chart-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        canvas {
            width: 100%;
            height: 200px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>
    <div class="header-buttons">
        <button onclick="location.href='${pageContext.request.contextPath}/'">홈페이지</button>
        <button onclick="location.href='${pageContext.request.contextPath}/mypage'">MyPage</button>
    </div>
    <h1>${userName}님의 건강 데이터 대시보드</h1>

    <!-- 사용자 정보 -->
    <div class="card" style="width: 100%;">
        <h2>사용자 정보</h2>
        <table>
            <tr>
                <th>이름</th>
                <td>${userName}</td>
                <th>성별</th>
                <td>${userGender}</td>
                <th>나이</th>
                <td>${userAge}</td>
            </tr>
        </table>
    </div>

    <!-- 개별 건강 데이터 차트들 -->
    <div class="chart-container">
        <div class="card">
            <h2>최고 혈압</h2>
            <canvas id="maxPressureChart"></canvas>
        </div>
        
        <div class="card">
            <h2>최저 혈압</h2>
            <canvas id="minPressureChart"></canvas>
        </div>
        
        <div class="card">
            <h2>심박수</h2>
            <canvas id="rateChart"></canvas>
        </div>
        
        <div class="card">
            <h2>혈당</h2>
            <canvas id="sugarChart"></canvas>
        </div>
        
        <div class="card">
            <h2>체온</h2>
            <canvas id="tempChart"></canvas>
        </div>
        
        <div class="card">
            <h2>체중</h2>
            <canvas id="weightChart"></canvas>
        </div>
    </div>

    <!-- 차트 데이터 Script -->
    <script>
        // 날짜 labels 배열 생성
        const labels = [
            <c:forEach var="data" items="${dataList}">
                "<fmt:formatDate value='${data.dateCreated}' pattern='yyyy-MM-dd' />",
            </c:forEach>
        ];
        
        // 데이터 배열 정의
        const maxPressureData = [<c:forEach var="data" items="${dataList}">${data.maxpressure},</c:forEach>];
        const minPressureData = [<c:forEach var="data" items="${dataList}">${data.minpressure},</c:forEach>];
        const rateData = [<c:forEach var="data" items="${dataList}">${data.rate},</c:forEach>];
        const tempData = [<c:forEach var="data" items="${dataList}">${data.temp},</c:forEach>];
        const sugarData = [<c:forEach var="data" items="${dataList}">${data.sugar},</c:forEach>];
        const weightData = [<c:forEach var="data" items="${dataList}">${data.weight},</c:forEach>];

        // 각 차트 생성 함수
        function createChart(canvasId, label, data, color) {
            const ctx = document.getElementById(canvasId).getContext('2d');
            new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [{
                        label: label,
                        data: data,
                        borderColor: color,
                        backgroundColor: color.replace('1)', '0.2)'),
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        }

        // 각 차트 생성 호출
        createChart('maxPressureChart', '최고 혈압', maxPressureData, 'rgba(255, 99, 132, 1)');
        createChart('minPressureChart', '최저 혈압', minPressureData, 'rgba(54, 162, 235, 1)');
        createChart('rateChart', '심박수', rateData, 'rgba(75, 192, 192, 1)');
        createChart('sugarChart', '혈당', sugarData, 'rgba(153, 102, 255, 1)');
        createChart('tempChart', '체온', tempData, 'rgba(255, 206, 86, 1)');
        createChart('weightChart', '체중', weightData, 'rgba(255, 159, 64, 1)');
    </script>
</body>

</html>
