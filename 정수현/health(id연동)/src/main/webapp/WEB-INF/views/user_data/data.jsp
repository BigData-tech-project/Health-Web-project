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
    <p>최고 혈압: ${MaxbloodPressure}</p>
    <p>최저 혈압: ${MinbloodPressure}</p>
    <p>심박수: ${rate}</p>
    <p>체온: ${temperature}</p>
    <p>혈당: ${bloodSugar}</p>
    <p>체중: ${weight}</p>

    <hr>

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
        <c:when test="${MaxbloodPressure > highBloodPressure}">
		    <p style="color:red;">혈압이 너무 높습니다! (기준보다 ${MaxbloodPressure - highBloodPressure} 높습니다.)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/high_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       고혈압 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
		</c:when>
    </c:choose>
    
    <c:choose>
    	<c:when test="${MinbloodPressure < lowBloodPressure}">
            <p style="color:red;">혈압이 너무 낮습니다! (기준보다 ${lowBloodPressure-MinbloodPressure} 낮습니다.)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/low_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       저혈압 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
    </c:choose>
    <!-- 심박수 검사 -->
    <c:choose>
        <c:when test="${rate > highRate}">
            <p style="color:red;">심박수가 너무 높습니다! (기준보다 ${rate - highRate} 높습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_heartrate" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       고심박수 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
        <c:when test="${rate < lowRate}">
            <p style="color:red;">심박수가 너무 낮습니다! (기준보다 ${lowRate - rate} 낮습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_heartrate" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       저심박수 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
    </c:choose>

    <!-- 체온 검사 -->
    <c:choose>
        <c:when test="${temperature > highTemperature}">
            <p style="color:red;">체온이 너무 높습니다! (기준보다 ${tempearature - highTemperature} 높습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_temperature" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       고체온 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
        <c:when test="${temperature < lowTemperature}">
            <p style="color:red;">체온이 너무 낮습니다! (기준보다 ${lowTemperature - temperature} 낮습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_temperature" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       저체온 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
    </c:choose>

    <!-- 혈당 검사 -->
    <c:choose>
        <c:when test="${bloodSugar > highBloodSugar}">
            <p style="color:red;">혈당이 너무 높습니다! (기준보다 ${bloddSugar - highBloodSugar} 높습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_diabetes" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       고혈당 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
        <c:when test="${bloodSugar < lowBloodSugar}">
            <p style="color:red;">혈당이 너무 낮습니다! (기준보다 ${lowBloodSugar - bloodSugar } 낮습니다.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_diabetes" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       저혈당 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
    </c:choose>

    <!-- 체중 검사 -->
    <c:choose>
        <c:when test="${weight > highWeight}">
            <p style="color:red;">체중이 너무 높습니다! (기준보다 ${weight - highWeight })</p>
            <a href="${pageContext.request.contextPath}/healthinfo/overweight" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       과체중 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
        <c:when test="${weight < lowWeight}">
            <p style="color:red;">체중이 너무 낮습니다! (기준보다 ${lowWeight - weight })</p>
            <a href="${pageContext.request.contextPath}/healthinfo/underweight" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       저체중 관리 정보
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		    </a>
        </c:when>
    </c:choose>

</body>
</html>
