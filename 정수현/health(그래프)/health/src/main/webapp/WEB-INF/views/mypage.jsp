<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이 페이지</title>
</head>
<body>
    <h1>마이페이지</h1>
    <c:set var="userId" value="${sessionScope.id}" />
	<c:if test="${not empty userId}">
        <p>${userId} 로그인 중..</p>
	    <button><a href="user_data/insert">건강 데이터 수치 입력</a></button>
	    <button><a href="user_data/showData">건강 데이터 분석 결과 보기</a></button>
	    <button><a href="${pageContext.request.contextPath}/">Home</a></button>
	    <button><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></button> 
    </c:if>

    <c:if test="${empty userId}">
        <p>로그인하여 이 페이지 보기.</p>
        <button><a href="../user/login">로그인하러 가기</a></button>
    </c:if>
</body>
</html>