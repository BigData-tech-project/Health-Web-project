<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>만성 질환 관리 페이지</title>
    <style>
        /* 기존 스타일 그대로 유지 */
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f9f9f9;
            font-family: Arial, sans-serif;
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
            gap: 20px;
        }

        .card {
            width: 200px;
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

        .card4 p {
            color: #FFFFFF;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>건강 관리 서비스!</h1>
    <p>만성 질환을 예방하고 증상을 관리할 수 있도록 돕는 집단 건강 관리 서비스입니다</p>

    <div class="card-container">
        <a href="weight_info" class="card card1">
            <div class="card-icon">⚖️</div>
            <h2>체중 관리</h2>
            <p>체중 관리를 통해 건강한 생활을 유지하세요.</p>
        </a>
        <a href="temperature_info" class="card card2">
            <div class="card-icon">🌡️</div>
            <h2>체온 관리</h2>
            <p>체온 관리를 통해 건강한 생활을 유지하세요.</p>
        </a>
        <a href="diabetes_info" class="card card3">
            <div class="card-icon">💉</div>
            <h2>당뇨 관리</h2>
            <p>당뇨병을 예방하고 관리하세요.</p>
        </a>
        <a href="bloodpressure_info" class="card card4">
            <div class="card-icon">🩸</div>
            <h2>혈압 관리</h2>
            <p>혈압을 효과적으로 관리하세요.</p>
        </a>
        <a href="heartrate_info" class="card card5">
            <div class="card-icon">💓</div>
            <h2>심박수 관리</h2>
            <p>심박수를 효과적으로 관리하세요.</p>
        </a>
    </div>
</div>

</body>
</html>
