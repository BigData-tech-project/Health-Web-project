<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>건강 관련 최신 뉴스</title>
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .news-section {
            padding: 20px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 20px;
        }
        .news-item {
            padding: 15px;
            margin-bottom: 10px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: transform 0.2s;
        }
        .news-item:hover {
            transform: scale(1.02);
        }
        .news-item a {
            color: #0056b3;
            font-weight: bold;
            text-decoration: none;
        }
        .news-item a:hover {
            text-decoration: underline;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            border-top: 1px solid #ddd;
        }
    </style>
</head>
<body>

    <!-- 배너 이미지 추가 -->
    <div class="image_container" style="width: 100%; position: relative; overflow: hidden; margin-bottom: 20px; height: 300px; object-fit: cover;">
        <img src="<c:url value='/resources/images/healthcare_bannerimg.jpeg'/>" alt="Banner Image" style="width: 100%; height: 100%; object-fit: cover; transition: transform 0.3s ease-in-out;" onmouseover="this.style.transform='scale(1.1)'" onmouseout="this.style.transform='scale(1)'">
    </div>

    <!-- 건강 관련 최신 뉴스 섹션 -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="news-section">
                    <h2>건강 관련 최신 뉴스</h2>

                    <c:if test="${not empty newsData}">
                        <ul class="list-unstyled">
                            <c:forEach var="news" items="${newsData}">
                                <div class="news-item">
                                    <a href="${news.link}" target="_blank">${news.title}</a><br>
                                </div>
                            </c:forEach>
                        </ul>
                    </c:if>

                    <c:if test="${not empty errorMessage}">
                        <div class="error">${errorMessage}</div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- 홈페이지 하단 카피라이트 영역 -->
    <div class="footer">
        <p>© 2024 건강 관리 프로그램. All rights reserved.</p>
    </div>
</body>
</html>
