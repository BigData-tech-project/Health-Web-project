<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        /* 전체 페이지 스타일 */
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        /* 페이지 제목 스타일 */
        .page-title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            padding: 20px;
            margin: 0;
            background-color: #f8f9fa;
            font-family: 'Montserrat', sans-serif;
        }

        /* 네비게이션 바 스타일 */
        .navbar-custom {
            background-color: #2c3e50;
            padding: 20px 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;

        }

        /* 네비게이션 바 메뉴 항목 스타일 */
        .navbar-custom .navbar-nav {
            display: flex;
            justify-content: center;
            gap: 15px;
            font-size: 30px;
        }

        .navbar-custom .navbar-nav > li > a {
            color: #fff;
            font-weight: bold;
            font-size: 20px;
            transition: color 0.3s ease;
            font-family: 'Montserrat', sans-serif;
        }

        /* 로그인 메뉴 위치 설정 */
        .navbar-right {
            position: absolute;
            right: 50px;
        }

        /* 마우스를 올렸을 때 텍스트만 강조 효과 */
        .navbar-custom .navbar-nav > li > a:hover {
            color: #18bc9c;
            background-color: transparent !important;
        }

        /* 뉴스 섹션 및 기타 스타일 */
        .news-section {
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #f8f9fa;
            height: auto;
            margin-bottom: 20px;
        }

        /* 건강 관리 메시지 제목 및 내용 스타일 */
        .health-message-title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            font-family: 'Montserrat', sans-serif;
        }

        .health-message-box {
            padding: 15px;
            border: 1px solid #ddd;
            background-color: #ffffff;
            margin: 0 auto;
            width: 100%;
            text-align: center;
            border-radius: 5px;
        }

        .news-item {
            border: 1px solid #ccc;
            padding: 15px;
            margin-bottom: 10px;
            background-color: #ffffff;
            border-radius: 5px;
        }

        /* 레이아웃 조정 */
        .news-container {
            display: flex;
            gap: 5px;
            justify-content: space-around;
        }

        .footer {
        background-color: #2c3e50;
        color: white;
        padding: 50px 0;
        display: flex;
        justify-content: space-around;
        text-align: center;
        font-family: 'Montserrat', sans-serif;
    }
    .footer-section {
        text-align: center;
        flex: 1;
    }
    .footer-section h3 {
        font-weight: bold;
        margin-bottom: 10px;
    }
    .footer-section p,
    .footer-section a {
        color: #ddd;
        text-decoration: none;
    }
    .footer-section a:hover {
        color: #18bc9c;
    }
    .footer-bottom {
        background-color: #1a1a1a;
        color: #ddd;
        padding: 10px 0;
        text-align: center;
        font-size: 14px;
    }

        .image_container img {
            width: 100%;
            height: 330px;
            object-fit: cover;
            transition: transform 0.3s ease-in-out;
        }
    </style>
</head>
<body>
    <!-- 페이지 제목 -->
    <div class="page-title">💊 HealthCare Manager</div>
    

    <!-- 네비게이션 바 -->
    <nav class="navbar navbar-custom navbar-expand-lg bg-secondary text-uppercase fixed-top">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav ms-auto">
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/intro">intro</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/healthInfo">건강 관리 정보</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/mypage">Mypage</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/NEWS/latest-news">최신 뉴스</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/user/login">login</a></li>
            </ul>
        </div>
    </nav>

    <!-- 배너 이미지 -->
    <div class="image_container" style="width: 100%; position: relative; overflow: hidden; margin-bottom: 20px;">
       <img src="<c:url value='/resources/images/healthcare_bannerimg.jpeg'/>" alt="Banner Image" onmouseover="this.style.transform='scale(1.1)'" onmouseout="this.style.transform='scale(1)'">
    </div>

    <!-- 콘텐츠 영역 -->
    <div class="container">
        <div class="news-container">
            <!-- 첫 번째 영역 -->
            <div class="news-section">
                <div class="health-message-title">당신의 건강을 관리하세요.</div>
                <div class="health-message-box">
                    <p>
                  저희는 일상에서 측정할 수 있는 <br>
                       혈압, 혈당, 심박수, 체온, 체중으로 <br>
                       당신의 건강을 체크하고 관리합니다.</p>
                </div>
            </div>

            <!-- 두 번째 뉴스 섹션 -->
            <div class="news-section">
                <h2 class="news-title"><a href="${pageContext.request.contextPath}/NEWS/latest-news" style="color: inherit; text-decoration: none;">최신 뉴스</a></h2>
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
    </div>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- 하단 카피라이트 영역 -->
<div class="footer">
    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Location</h4>
                        <p class="lead mb-0">
                            경상남도 김해시
                            <br />
                            인제로 197
                        </p>
                    </div>
    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Inje University website</h4>
        <a href="http://www.inje.ac.kr" target="_blank"><span class="glyphicon glyphicon-globe"></span></a>
    </div>
    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4">About Freelancer</h4>
                        <p class="lead mb-0">
                            Freelance is a free to use, MIT licensed Bootstrap theme created by
                            <a href="http://startbootstrap.com">Start Bootstrap</a>
                            .
                        </p>
                    </div>
</div>
<div class="footer-bottom">
    <p>Copyright © Healthcare 2024</p>
</div>
</body>
</html>