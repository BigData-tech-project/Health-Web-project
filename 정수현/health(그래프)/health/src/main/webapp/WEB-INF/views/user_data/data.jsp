<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>�ǰ� ������ �м�</title>
</head>
<body>
    <h1>�ǰ� ������ �м� ���</h1>

    <!-- ����ڰ� �Է��� ������ ǥ�� -->
    <p>�ְ� ����: ${maxpressure}</p>
    <p>���� ����: ${minpressure}</p>
    <p>�ɹڼ�: ${rate}</p>
    <p>ü��: ${temp}</p>
    <p>����: ${sugar}</p>
    <p>ü��: ${weight}</p>

    <hr>

    <!-- �׷����� ���� ĵ���� ��� -->
    <canvas id="healthChart" width="400" height="200"></canvas>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // JSP���� EL ǥ������ ���� �����͸� JavaScript ������ ����
        const data = {
            labels: ['�ְ� ����', '���� ����', '�ɹڼ�', 'ü��', '����', 'ü��'],
            datasets: [{
                label: '����� �ǰ� ������',
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

        // Chart.js �ʱ�ȭ �� �׷��� ����
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
