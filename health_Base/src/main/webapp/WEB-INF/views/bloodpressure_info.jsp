<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>혈압 관리</title>
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
            color: #5C6BC0;
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
            color: #5C6BC0;
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
            color: #5C6BC0;
        }
        .important {
            background-color: #e0f7fa;
            border-left: 4px solid #81d4fa;
            padding: 10px;
            margin: 20px 0;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="content">
    <h1>혈압 관리</h1>
    <p>혈압 관리는 심혈관 건강을 유지하고 고혈압 및 저혈압과 같은 혈압 관련 질환을 예방하는 데 중요합니다. 적절한 식습관과 운동을 통해 혈압을 관리할 수 있습니다.</p>
    <p>혈압을 효과적으로 관리하여 심장 질환, 뇌졸중 등 심각한 건강 문제를 예방할 수 있습니다.</p>

    <div class="section">
        <h2>혈압 관리의 중요성</h2>
        <p>혈압은 심혈관 건강의 중요한 지표입니다. 적절한 혈압을 유지하면 심장과 혈관에 가해지는 부담을 줄일 수 있으며, 심각한 합병증을 예방할 수 있습니다.</p>
    </div>

    <div class="section">
        <h2>혈압 관리 방법</h2>
        <p>혈압을 건강하게 유지하기 위한 몇 가지 실천 방법은 다음과 같습니다:</p>
        <ul class="tips-list">
            <li>염분 섭취를 줄이고 균형 잡힌 식단을 유지하세요.</li>
            <li>규칙적인 운동을 통해 심혈관 건강을 증진하세요.</li>
            <li>스트레스를 관리하고, 충분한 수면을 취하세요.</li>
            <li>정기적으로 혈압을 측정하여 상태를 모니터링하세요.</li>
            <li>흡연과 음주를 피하고, 건강한 생활 습관을 유지하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=D0tJ9fonOpA" target="_blank" style="color: #333; text-decoration: none;">
                https://www.youtube.com/watch?v=D0tJ9fonOpA
            </a>
        </div>
    </div>
</div>

</body>
</html>
