<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>최신 뉴스</title>
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .news-container {
            margin-top: 30px;
        }
        .news-item {
            border-bottom: 1px solid #ddd;
            padding: 20px 0;
            margin-bottom: 20px;
        }
        .news-title {
            font-size: 1.5em;
            font-weight: bold;
            color: #0056b3;
            text-decoration: none;
        }
        .news-title:hover {
            text-decoration: underline;
        }
        .news-date {
            font-size: 0.9em;
            color: #888;
        }
        .news-summary {
            margin-top: 10px;
        }
        .container {
            max-width: 800px;
        }
    </style>
</head>
<body>
    <div class="container news-container">
        <h1 class="text-center">최신 뉴스</h1>
        <c:if test="${not empty newsList}">
            <c:forEach var="news" items="${newsList}">
                <div class="news-item">
                    <a href="${news.link}" class="news-title">${news.title}</a>
                    <div class="news-date">${news.date}</div>
                    <p class="news-summary">${news.summary}</p>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${empty newsList}">
            <p class="text-center">현재 표시할 뉴스가 없습니다.</p>
        </c:if>
    </div>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
