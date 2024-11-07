<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        /* 추가적인 스타일링 */
        .news-section {
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #f8f9fa;
            height: auto;
        }
        .news-item {
            border: 1px solid #ccc;
            padding: 15px;
            margin-bottom: 10px;
            background-color: #ffffff;
            border-radius: 5px;
        }
        .blue-box {
            background-color: transparent;
            color: white;
            padding: 20px;
            height: auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 10px;
        }
        .blue-box a {
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 45%;
            height: 150px;
            background-color: #0056b3;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .blue-box a:hover {
            background-color: #003d80;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            border-top: 1px solid #ddd;
        }
        .image_container img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            transition: transform 0.3s ease-in-out;
        }
    </style>
</head>
<body>
    <h1>HealthCare Manager</h1>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">3조</a>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/intro">intro <span class="sr-only">(current)</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/healthInfo">건강 관리 정보</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage">Mypage</a></li>
                    <li><a href="${pageContext.request.contextPath}/NEWS/latest-news">최신 뉴스</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${pageContext.request.contextPath}/user/login">login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- 배너 이미지 추가 -->
    <div class="image_container" style="width: 100%; position: relative; overflow: hidden; margin-bottom: 20px;">
       <img src="<c:url value='/resources/images/healthcare_bannerimg.jpeg'/>" alt="Banner Image" onmouseover="this.style.transform='scale(1.1)'" onmouseout="this.style.transform='scale(1)'">
    </div>

    <!-- 최신 뉴스 및 파란색 박스 영역 -->
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="news-section" style="margin-bottom: 20px;">
                    <h2 class="news-title"><a href="${pageContext.request.contextPath}/NEWS/latest-news" style="color: inherit; text-decoration: none;">최신 뉴스</a></h2>
                    
                    <!-- 최신 뉴스 데이터를 여기 추가 -->
                    <c:if test="${not empty newsData}">
                        <c:forEach var="news" items="${newsData}">
                            <div class="news-item">
                                <a href="${news.link}" target="_blank">${news.title}</a><br>
                            </div>
                        </c:forEach>
                    </c:if>

                    <c:if test="${empty newsData}">
                        <div class="news-item">최신 뉴스를 불러올 수 없습니다.</div>
                    </c:if>
                </div>
            </div>
            <div class="col-md-4">
                <div class="blue-box" style="margin-top: 0; align-self: flex-start;">
                    <a href="${pageContext.request.contextPath}/intro">HealthCare Manger 사이트입니다.</a>
<%--                     <a href="${pageContext.request.contextPath}/NEWS/latest-news">최신 뉴스</a> --%>
<%--                     <a href="${pageContext.request.contextPath}/healthInfo">건강 정보</a> --%>
<%--                     <a href="${pageContext.request.contextPath}/user/login">로그인</a> --%>
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
