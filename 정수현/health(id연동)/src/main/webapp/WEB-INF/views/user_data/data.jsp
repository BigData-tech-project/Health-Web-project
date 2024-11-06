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
    <p>�ְ� ����: ${MaxbloodPressure}</p>
    <p>���� ����: ${MinbloodPressure}</p>
    <p>�ɹڼ�: ${rate}</p>
    <p>ü��: ${temperature}</p>
    <p>����: ${bloodSugar}</p>
    <p>ü��: ${weight}</p>

    <hr>

    <!-- ���ذ��� JSTL ������ ���� -->
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

    <!-- ���� �˻� -->
    <c:choose>
        <c:when test="${MaxbloodPressure > highBloodPressure}">
		    <p style="color:red;">������ �ʹ� �����ϴ�! (���غ��� ${MaxbloodPressure - highBloodPressure} �����ϴ�.)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/high_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ������ ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
		</c:when>
    </c:choose>
    
    <c:choose>
    	<c:when test="${MinbloodPressure < lowBloodPressure}">
            <p style="color:red;">������ �ʹ� �����ϴ�! (���غ��� ${lowBloodPressure-MinbloodPressure} �����ϴ�.)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/low_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ������ ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
    </c:choose>
    <!-- �ɹڼ� �˻� -->
    <c:choose>
        <c:when test="${rate > highRate}">
            <p style="color:red;">�ɹڼ��� �ʹ� �����ϴ�! (���غ��� ${rate - highRate} �����ϴ�.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_heartrate" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ��ɹڼ� ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
        <c:when test="${rate < lowRate}">
            <p style="color:red;">�ɹڼ��� �ʹ� �����ϴ�! (���غ��� ${lowRate - rate} �����ϴ�.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_heartrate" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ���ɹڼ� ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
    </c:choose>

    <!-- ü�� �˻� -->
    <c:choose>
        <c:when test="${temperature > highTemperature}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (���غ��� ${tempearature - highTemperature} �����ϴ�.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_temperature" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ��ü�� ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
        <c:when test="${temperature < lowTemperature}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (���غ��� ${lowTemperature - temperature} �����ϴ�.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_temperature" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ��ü�� ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
    </c:choose>

    <!-- ���� �˻� -->
    <c:choose>
        <c:when test="${bloodSugar > highBloodSugar}">
            <p style="color:red;">������ �ʹ� �����ϴ�! (���غ��� ${bloddSugar - highBloodSugar} �����ϴ�.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/high_diabetes" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ������ ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
        <c:when test="${bloodSugar < lowBloodSugar}">
            <p style="color:red;">������ �ʹ� �����ϴ�! (���غ��� ${lowBloodSugar - bloodSugar } �����ϴ�.)</p>
            <a href="${pageContext.request.contextPath}/healthinfo/low_diabetes" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ������ ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
    </c:choose>

    <!-- ü�� �˻� -->
    <c:choose>
        <c:when test="${weight > highWeight}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (���غ��� ${weight - highWeight })</p>
            <a href="${pageContext.request.contextPath}/healthinfo/overweight" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ��ü�� ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
        <c:when test="${weight < lowWeight}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (���غ��� ${lowWeight - weight })</p>
            <a href="${pageContext.request.contextPath}/healthinfo/underweight" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ��ü�� ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
        </c:when>
    </c:choose>

</body>
</html>
