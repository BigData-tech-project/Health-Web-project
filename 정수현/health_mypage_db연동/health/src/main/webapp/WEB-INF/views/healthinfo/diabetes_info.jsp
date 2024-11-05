<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>당뇨 관리</title>
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
            color: #F06292;
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
            color: #F06292;
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
            color: #F06292;
        }
        .important {
            background-color: #ffe0e0;
            border-left: 4px solid #f48fb1;
            padding: 10px;
            margin: 20px 0;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="content">
    <h1>당뇨 관리</h1>
    <p>당뇨 관리는 혈당 수치를 적정 수준으로 유지하고, 건강한 생활을 지속하는 데 중요한 요소입니다. 적절한 식이요법과 규칙적인 운동을 통해 당뇨를 예방하고 관리할 수 있습니다.</p>
    <p>혈당을 효과적으로 관리하여 당뇨로 인한 합병증을 예방할 수 있습니다.</p>

    <div class="section">
        <h2>당뇨 관리의 중요성</h2>
        <p>혈당 수치를 일정하게 유지함으로써 신장, 심장, 시력 등 다양한 합병증을 예방할 수 있습니다. 특히, 식습관과 생활습관을 관리하는 것이 당뇨 관리에 큰 도움이 됩니다.</p>
    </div>

    <div class="section">
        <h2>당뇨 관리 방법</h2>
        <p>당뇨를 관리하기 위한 몇 가지 실천 방법은 다음과 같습니다:</p>
        <ul class="tips-list">
            <li>혈당 수치를 정기적으로 확인하세요.</li>
            <li>균형 잡힌 식단을 유지하고, 과도한 탄수화물 섭취를 피하세요.</li>
            <li>규칙적인 운동을 통해 혈당을 조절하세요.</li>
            <li>충분한 수분 섭취를 유지하세요.</li>
            <li>스트레스를 관리하여 혈당 변동을 줄이세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=fSNqvWPjfoQ" target="_blank" style="color: #333; text-decoration: none;">
                https://www.youtube.com/watch?v=fSNqvWPjfoQ
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