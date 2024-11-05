<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>체온 관리</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
            color: #333;
        }
        .content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }
        h1 {
            color: #FFA726;
            font-size: 32px;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            line-height: 1.6;
        }
        .section {
            margin: 30px 0;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: left;
        }
        .section h2 {
            font-size: 24px;
            color: #FFA726;
            margin-bottom: 10px;
        }
        .tips-list {
            list-style: none;
            padding: 0;
        }
        .tips-list li {
            margin-bottom: 10px;
            padding-left: 20px;
            position: relative;
        }
        .tips-list li::before {
            content: "✔️";
            position: absolute;
            left: 0;
            color: #FFA726;
        }
        .important {
            background-color: #ffefc5;
            border-left: 4px solid #ffb74d;
            padding: 10px;
            margin: 20px 0;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="content">
    <h1>체온 관리</h1>
    <p>체온 관리는 건강을 유지하는 데 중요한 요소입니다. 적정 체온을 유지하는 것은 면역력을 높이고, 체내 에너지 균형을 유지하는 데 도움이 됩니다.</p>
    <p>정상 체온을 유지함으로써 다양한 질환을 예방할 수 있습니다.</p>

    <div class="section">
        <h2>체온 관리의 중요성</h2>
        <p>정상 체온을 유지하면 감염, 염증 등의 위험을 줄일 수 있으며, 신진대사와 면역 체계를 최적화할 수 있습니다. 특히 겨울철과 같은 기온 변화가 심한 계절에는 체온 관리가 더욱 중요합니다.</p>
    </div>

    <div class="section">
        <h2>체온 관리 방법</h2>
        <p>아래는 체온을 적절히 관리하기 위한 방법들입니다:</p>
        <ul class="tips-list">
            <li>적절한 옷차림으로 외부 온도에 맞춰 체온을 조절하세요.</li>
            <li>규칙적인 운동을 통해 체온을 유지하세요.</li>
            <li>충분한 물을 섭취하여 체내 수분 균형을 유지하세요.</li>
            <li>따뜻한 음식과 음료를 섭취하세요.</li>
            <li>감기에 걸리지 않도록 건강에 유의하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=qF8gbIlIvi0" target="_blank" style="color: #333; text-decoration: none;">
                https://www.youtube.com/watch?v=qF8gbIlIvi0
            </a>
        </div>
    </div>
    <div style="margin-top: 30px; text-align: center;">
        <a href="${pageContext.request.contextPath}/healthInfo" style="display: inline-block; padding: 10px 20px; font-size: 16px; background-color: #4CAF50; color: #fff; border-radius: 5px; text-decoration: none; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
           	 이전 페이지
        </a>
    </div>
</div>

</body>
</html>