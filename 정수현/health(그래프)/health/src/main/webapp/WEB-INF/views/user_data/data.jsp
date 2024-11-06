<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>건강 데이터 분석</title>
</head>
<body>
    <h1>건강 데이터 분석 결과</h1>

    <!-- 사용자가 입력한 데이터 표시 -->
    <p>최고 혈압: ${maxpressure}</p>
    <p>최저 혈압: ${minpressure}</p>
    <p>심박수: ${rate}</p>
    <p>체온: ${temp}</p>
    <p>혈당: ${sugar}</p>
    <p>체중: ${weight}</p>

    <hr>

    <!-- 그래프를 위한 캔버스 요소 -->
    <canvas id="healthChart" width="400" height="200"></canvas>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // JSP에서 EL 표현식을 통해 데이터를 JavaScript 변수에 전달
        const data = {
            labels: ['최고 혈압', '최저 혈압', '심박수', '체온', '혈당', '체중'],
            datasets: [{
                label: '사용자 건강 데이터',
                data: [
                    ${maxpressure}, 
                    ${minpressure}, 
                    ${rate}, 
                    ${temp}, 
                    ${sugar}, 
                    ${weight}
                ],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        };

        // Chart.js 초기화 및 그래프 생성
        const ctx = document.getElementById('healthChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
