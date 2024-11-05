<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>심박수 관리</title>
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
            color: #e57373;
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
            color: #e57373;
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
            color: #e57373;
        }
        .important {
            background-color: #ffe0e0;
            border-left: 4px solid #ffb6b6;
            padding: 10px;
            margin: 20px 0;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="content">
    <h1>심박수 관리</h1>
    <p>심박수 관리는 심장 건강을 유지하는 데 중요한 요소입니다. 적정 심박수를 유지하면 심혈관 질환의 위험을 줄이고, 전반적인 체력과 건강을 증진할 수 있습니다.</p>
    <p>정기적인 심박수 관리를 통해 건강한 생활을 유지하세요.</p>

    <div class="section">
        <h2>심박수 관리의 중요성</h2>
        <p>심박수는 심장 기능을 반영하는 중요한 지표입니다. 안정적인 심박수를 유지하면 심혈관 건강을 증진할 수 있으며, 스트레스와 피로를 줄이는 데 도움이 됩니다.</p>
    </div>

    <div class="section">
        <h2>심박수 관리 방법</h2>
        <p>아래는 심박수를 적정 수준으로 유지하기 위한 방법들입니다:</p>
        <ul class="tips-list">
            <li>규칙적인 유산소 운동을 통해 심박수를 안정화하세요.</li>
            <li>충분한 수면을 취해 몸의 회복을 도와주세요.</li>
            <li>스트레스 관리 기술을 익혀 심박수 변동을 줄이세요.</li>
            <li>카페인 섭취를 줄여 심박수 급상승을 방지하세요.</li>
            <li>정기적으로 심박수를 측정하고 모니터링하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=wzh6bQisLBI" target="_blank" style="color: #333; text-decoration: none;">
                https://www.youtube.com/watch?v=wzh6bQisLBI
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