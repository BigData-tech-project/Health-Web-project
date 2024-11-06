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
		    <p style="color:red;">������ �ʹ� �����ϴ�! (����: ${highBloodPressure} �̻�)</p>
		    <a href="${pageContext.request.contextPath}/healthinfo/high_bloodpressure" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       ������ ���� ����
		    </a>
		    <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main ������
		    </a>
		</c:when>
        <c:when test="${MinbloodPressure < lowBloodPressure}">
            <p style="color:red;">������ �ʹ� �����ϴ�! (����: ${lowBloodPressure} ����)</p>
        </c:when>
    </c:choose>

    <!-- �ɹڼ� �˻� -->
    <c:choose>
        <c:when test="${rate > highRate}">
            <p style="color:red;">�ɹڼ��� �ʹ� �����ϴ�! (����: ${highRate} �̻�)</p>
        </c:when>
        <c:when test="${rate < lowRate}">
            <p style="color:red;">�ɹڼ��� �ʹ� �����ϴ�! (����: ${lowRate} ����)</p>
        </c:when>
    </c:choose>

    <!-- ü�� �˻� -->
    <c:choose>
        <c:when test="${temperature > highTemperature}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (����: ${highTemperature} �̻�)</p>
        </c:when>
        <c:when test="${temperature < lowTemperature}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (����: ${lowTemperature} ����)</p>
        </c:when>
    </c:choose>

    <!-- ���� �˻� -->
    <c:choose>
        <c:when test="${bloodSugar > highBloodSugar}">
            <p style="color:red;">������ �ʹ� �����ϴ�! (����: ${highBloodSugar} �̻�)</p>
        </c:when>
        <c:when test="${bloodSugar < lowBloodSugar}">
            <p style="color:red;">������ �ʹ� �����ϴ�! (����: ${lowBloodSugar} ����)</p>
        </c:when>
    </c:choose>

    <!-- ü�� �˻� -->
    <c:choose>
        <c:when test="${weight > highWeight}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (����: ${highWeight} �̻�)</p>
        </c:when>
        <c:when test="${weight < lowWeight}">
            <p style="color:red;">ü���� �ʹ� �����ϴ�! (����: ${lowWeight} ����)</p>
        </c:when>
    </c:choose>

</body>
</html>
