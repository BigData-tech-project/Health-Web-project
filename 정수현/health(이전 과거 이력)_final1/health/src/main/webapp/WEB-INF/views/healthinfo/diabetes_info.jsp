<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>당뇨 관리</title>
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
            gap: 20px;
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
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* 고혈당 박스 스타일 */
        .box-high {
            background-color: #ff8a65;
        }

        /* 저혈당 박스 스타일 */
        .box-low {
            background-color: #4fc3f7;
        }

        /* 박스 호버 효과 */
        .box:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
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
    <div class="title">당뇨 유형</div>

    <div class="container">
        <!-- 고혈당 박스 - 클릭 시 high_blood_sugar.jsp로 이동 -->
        <a href="high_diabetes" class="box box-high">
            <div class="icon">🍬</div> <!-- 고혈당 이모티콘 -->
            고혈당
        </a>

        <!-- 저혈당 박스 - 클릭 시 low_blood_sugar.jsp로 이동 -->
        <a href="low_diabetes" class="box box-low">
            <div class="icon">🥄</div> <!-- 저혈당 이모티콘 -->
            저혈당
        </a>
    </div>
    <div style="margin-top: 30px; text-align: center;">
        <a href="${pageContext.request.contextPath}/healthInfo" style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
           	 이전 페이지
        </a>
    </div>
</body>
</html>