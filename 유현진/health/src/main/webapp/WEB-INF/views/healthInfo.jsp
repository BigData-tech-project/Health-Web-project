<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>만성 질환 관리 페이지</title>
    
    <!-- Google Fonts 추가 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap">
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        /* 전체 페이지 스타일 */
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        /* 네비게이션 바 스타일 */
        .navbar-custom {
            background-color: #2c3e50;
            border-color: transparent;
            padding: 25px 30px;
        }

        /* 네비게이션 바 텍스트 위치 조정 */
        .navbar-brand {
            padding-left: 100px;
            color: #fff !important;
            font-weight: bold;
            font-size: 30px;
        }
        
        /* 네비게이션 바 메뉴 항목 스타일 */
        .navbar-custom .navbar-nav > li > a {
            color: #fff;
            font-weight: bold;
            font-size: 20px;
            margin-right: 15px;
            transition: color 0.3s ease;
            font-family: 'Montserrat', sans-serif; /* 글꼴 설정 */
        }

        /* 마우스를 올렸을 때 텍스트만 강조 효과 */
        .navbar-custom .navbar-nav > li > a:hover {
            color: #18bc9c;
            background-color: transparent !important;
        }

        /* 네비게이션 바 메뉴 왼쪽으로 이동 */
        .navbar-nav {
            margin-right: 25px;
        }

        .container {
            max-width: 1200px;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        p {
            color: #666;
            margin-bottom: 40px;
        }

        .card-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            flex: 1 1 200px; /* 카드의 최소 너비를 200px로 설정하여 반응형으로 만듦 */
            max-width: 250px;
            padding: 20px;
            border-radius: 10px;
            color: #fff;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-decoration: none;
        }

        .card-icon {
            font-size: 50px;
            margin-bottom: 10px;
        }

        .card h2 {
            font-size: 18px;
            margin: 10px 0;
            color: #fff;
        }

        .card p {
            font-size: 14px;
            margin: 0;
        }

        /* Card Colors */
        .card1 { background-color: #4CAF50; }
        .card2 { background-color: #FFA726; }
        .card3 { background-color: #F06292; }
        .card4 { background-color: #5C6BC0; }
        .card5 { background-color: #42A5F5; }

        /* 혈압 관리 카드의 글자 색상 */
        .card4 p {
            color: #FFFFFF; /* 흰색으로 설정 */
        }
    </style>
</head>
<body>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-custom navbar-expand-lg bg-secondary text-uppercase fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">HEALTHCARE MANAGER</a>
        </div>
        <ul class="nav navbar-nav navbar-right ms-auto">
            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/">Home</a></li>
            <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/mypage">My Page</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <h1>건강 관리 서비스!</h1>
    <p>만성 질환을 예방하고 증상을 관리할 수 있도록 돕는 집단 건강 관리 서비스입니다</p>

    <div class="card-container">
        <a href="healthinfo/weight_info" class="card card1">
            <div class="card-icon">⚖️</div>
            <h2>체중 관리</h2>
            <p>체중 관리를 통해 건강한 생활을 유지하세요.</p>
        </a>
        <a href="healthinfo/temperature_info" class="card card2">
            <div class="card-icon">🌡️</div>
            <h2>체온 관리</h2>
            <p>체온 관리를 통해 건강한 생활을 유지하세요.</p>
        </a>
        <a href="healthinfo/diabetes_info" class="card card3">
            <div class="card-icon">💉</div>
            <h2>당뇨 관리</h2>
            <p>당뇨병을 예방하고 관리하세요.</p>
        </a>
        <a href="healthinfo/bloodpressure_info" class="card card4">
            <div class="card-icon">🩸</div>
            <h2>혈압 관리</h2>
            <p>혈압을 효과적으로 관리하세요.</p>
        </a>
        <a href="healthinfo/heartrate_info" class="card card5">
            <div class="card-icon">💓</div>
            <h2>심박수 관리</h2>
            <p>심박수를 효과적으로 관리하세요.</p>
        </a>
    </div>

    <!-- Home 버튼 -->
    <div style="margin-top: 30px; text-align: center;">
        <a href="${pageContext.request.contextPath}/" style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            Home
        </a>
    </div>
</div>

<!-- Bootstrap JavaScript 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>