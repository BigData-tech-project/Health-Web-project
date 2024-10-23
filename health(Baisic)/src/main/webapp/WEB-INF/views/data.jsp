<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>건강 데이터 그래프</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <h1>건강 데이터 그래프</h1>
    <canvas id="healthDataChart" width="400" height="200"></canvas>
    
    <script>
        var ctx = document.getElementById('healthDataChart').getContext('2d');
        var bloodPressure = '${sessionScope.bloodPressure}';
        var bloodSugar = '${sessionScope.bloodSugar}';
        var anemia = '${sessionScope.anemia}';

        var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['혈압', '혈당', '빈혈 여부'],
                datasets: [{
                    label: '건강 데이터',
                    data: [bloodPressure, bloodSugar, anemia],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)'
                    ],
                    borderWidth: 1
                }]
            },
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
