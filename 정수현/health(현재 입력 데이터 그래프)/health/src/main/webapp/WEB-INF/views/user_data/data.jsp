<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>건강 데이터 분석</title>
</head>
<body>
    <h1>건강 데이터 분석 결과</h1>

<!--     사용자가 입력한 데이터 표시 -->
<%-- 	<p>최고 혈압: ${maxpressure}</p> --%>
<%-- 	<p>최저 혈압: ${minpressure}</p> --%>
<%-- 	<p>심박수: ${rate}</p> --%>
<%-- 	<p>체온: ${temperature}</p> --%>
<%-- 	<p>혈당: ${bloodsugar}</p> --%>
<%-- 	<p>체중: ${weight}</p> --%>

    <hr>
    
    <!-- 그래프를 위한 캔버스 요소 -->
    <canvas id="healthChart" width="600" height="300"></canvas>

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
                    ${temperature}, 
                    ${bloodsugar}, 
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

        // Chart.js 초기화 및 가로 막대 그래프 생성
        const ctx = document.getElementById('healthChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar', // 막대 그래프 타입 설정
            data: data,
            options: {
                indexAxis: 'y', // 가로 방향으로 표시
                scales: {
                    x: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
    
    <!-- 기준값을 JSTL 변수로 설정 -->
    <c:set var="highBloodPressure" value="140" />
    <c:set var="lowBloodPressure" value="90" />
    <c:set var="highRate" value="100" />
    <c:set var="lowRate" value="60" />
    <c:set var="highTemperature" value="37.5" />
    <c:set var="lowTemperature" value="36.0" />
    <c:set var="highBloodSugar" value="140" />
    <c:set var="lowBloodSugar" value="70" />
    <c:set var="highWeight" value="100.0" />
    <c:set var="lowWeight" value="45.0" />

    <!-- 혈압 검사 -->
    <c:choose>
        <c:when test="${maxpressure > highBloodPressure}">
		    <p style="color:red;">혈압이 너무 높습니다! (기준보다 ${maxpressure - highBloodPressure} 높습니다.)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/high_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       고혈압 관리 정보
		    </a>
		</c:when>
        <c:when test="${minpressure < lowBloodPressure}">
            <p style="color:red;">혈압이 너무 낮습니다! (기준보다 ${lowBloodPressure - minpressure} 낮습니다.)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/low_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       저혈압 관리 정보
		    </a>
        </c:when>
    </c:choose>
    
    <!-- 심박수 검사 -->
    <c:choose>
        <c:when test="${rate > highRate}">
            <p style="color:red;">심박수가 너무 높습니다! (기준보다 ${rate - highRate} 높습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_heartrate">고심박수 관리 정보</a>
        </c:when>
        <c:when test="${rate < lowRate}">
            <p style="color:red;">심박수가 너무 낮습니다! (기준보다 ${lowRate - rate} 낮습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_heartrate">저심박수 관리 정보</a>
        </c:when>
    </c:choose>

    <!-- 체온 검사 -->
    <c:choose>
        <c:when test="${temperature > highTemperature}">
            <p style="color:red;">체온이 너무 높습니다! (기준보다 ${temperature - highTemperature} 높습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_temperature">고체온 관리 정보</a>
        </c:when>
        <c:when test="${temperature < lowTemperature}">
            <p style="color:red;">체온이 너무 낮습니다! (기준보다 ${lowTemperature - temperature} 낮습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_temperature">저체온 관리 정보</a>
        </c:when>
    </c:choose>

</body>
</html>
