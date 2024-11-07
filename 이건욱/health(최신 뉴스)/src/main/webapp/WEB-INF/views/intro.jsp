<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>건강 관련 최신 뉴스</title>
</head>
<body>
    <h1>건강 관련 최신 뉴스</h1>
    
    <c:if test="${not empty newsData}">
        <ul>
            <c:forEach var="news" items="${newsData}">
                <li>
                    <a href="${news.link}" target="_blank">${news.title}</a><br>
                    <span>출처: ${news.originallink}</span><br>
                    <span>발행일: ${news.pubDate}</span>
                </li>
            </c:forEach>
        </ul>
    </c:if>

    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>
</body>
</html>

