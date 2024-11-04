<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈페이지 소개</title>
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        /* 추가적인 스타일링 */
        .intro-container {
            padding: 30px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-top: 20px;
        }
        .intro-item {
            padding: 15px;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s;
        }
        .intro-item:hover {
            background-color: #f0f0f0;
        }
        .intro-item a {
            color: #333;
            text-decoration: none;
        }
        .intro-item a:hover {
            text-decoration: underline;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            border-top: 1px solid #ddd;
        }
        .home-button {
            margin-top: 20px;
        }
        .home-button a {
            text-decoration: none;
            color: #fff;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
        }
        .home-button a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- 배너 이미지 추가 -->
    <div class="image_container" style="width: 100%; position: relative; overflow: hidden; margin-bottom: 20px; height: 300px; object-fit: cover;">
       <img src="<c:url value='/resources/images/healthcare_bannerimg.jpeg' />" alt="Banner Image" style="width: 100%; height: 100%; object-fit: cover; transition: transform 0.3s ease-in-out;" onmouseover="this.style.transform='scale(1.1)'" onmouseout="this.style.transform='scale(1)'">
    </div>

    <div class="container">
        <div class="intro-container">
            <h2>홈페이지에 오신 것을 환영합니다!</h2>
            <p>이 페이지는 저희 홈페이지에 대한 소개 페이지입니다.</p>
            <p>저희는 다양한 서비스를 통해 사용자에게 유용한 정보를 제공하고자 합니다.</p>
            <p>저희 홈페이지를 통해 다양한 콘텐츠를 탐색해 보시기 바랍니다. 감사합니다!</p>
             
            <div class="home-button">
                <a href="${pageContext.request.contextPath}/">Home</a>
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
