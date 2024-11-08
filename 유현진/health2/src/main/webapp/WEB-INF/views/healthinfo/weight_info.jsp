<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>체중 유형</title>
    <style>
        /* 전체 페이지 스타일 */
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f9f9f9;
        }

        /* 제목 스타일 */
        .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        /* 박스 컨테이너 스타일 */
        .container {
            display: flex;
            gap: 20px; /* 박스 간의 간격 */
        }

        /* 공통 박스 스타일 */
        .box {
            width: 150px;
            height: 100px;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-size: 18px;
            font-weight: bold;
            color: #fff;
            text-decoration: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* 과체중 박스 스타일 */
        .box-overweight {
            background-color: #ff7043;
        }

        /* 저체중 박스 스타일 */
        .box-underweight {
            background-color: #64b5f6;
        }

        /* 박스 호버 효과 */
        .box:hover {
            transform: translateY(-5px); /* 마우스를 올렸을 때 약간 위로 이동 */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); /* 그림자 강화 */
        }

        /* 이모티콘 스타일 */
        .icon {
            font-size: 30px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <!-- 제목 추가 -->
    <div class="title">체중 유형</div>

    <div class="container">
        <!-- 과체중 박스 - 클릭 시 overweight.jsp로 이동 -->
        <a href="overweight" class="box box-overweight">
            <div class="icon">🍔</div> <!-- 과체중 이모티콘 -->
            과체중
        </a>

        <!-- 저체중 박스 - 클릭 시 underweight.jsp로 이동 -->
        <a href="underweight" class="box box-underweight">
            <div class="icon">🍏</div> <!-- 저체중 이모티콘 -->
            저체중
        </a>
    </div>
    <div style="margin-top: 30px; text-align: center;">
        <button onclick="history.back()" style="padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; border: none; cursor: pointer; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            	이전 페이지로 돌아가기
        </button>
        <a href="${pageContext.request.contextPath}/" 
		       style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
		       main 페이지
		</a>
    </div>
</body>
</html>