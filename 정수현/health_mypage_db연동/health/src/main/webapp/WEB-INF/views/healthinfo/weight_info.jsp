<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>체중 관리</title>
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
            color: #4CAF50;
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
            color: #4CAF50;
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
            color: #4CAF50;
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
    <h1>체중 관리</h1>
    <p>체중 관리는 건강한 생활을 유지하는 데 중요한 요소입니다. 적절한 식단과 규칙적인 운동을 통해 체중을 관리하고, 건강한 BMI를 유지하는 것이 좋습니다.</p>
    <p>체중 관리를 통해 각종 질환을 예방하고, 더욱 활기찬 생활을 할 수 있습니다.</p>

    <div class="section">
        <h2>체중 관리의 중요성</h2>
        <p>적정 체중을 유지하면 심혈관 질환, 당뇨병, 고혈압 등의 만성 질환 위험을 줄일 수 있습니다. 또한 에너지 수준이 높아져 더 활기차고 건강한 생활을 할 수 있습니다.</p>
    </div>

    <div class="section">
        <h2>체중 관리 방법</h2>
        <p>체중을 효과적으로 관리하기 위해서는 아래와 같은 방법을 실천하는 것이 중요합니다:</p>
        <ul class="tips-list">
            <li>균형 잡힌 식단을 유지하세요.</li>
            <li>규칙적인 운동을 통해 칼로리를 소모하세요.</li>
            <li>충분한 수분을 섭취하세요.</li>
            <li>스트레스를 효과적으로 관리하세요.</li>
            <li>적절한 수면을 취하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>체중 관리 팁</h2>
        <p>체중 관리를 시작하려면 작은 변화부터 시작해보세요. 일상 생활에 쉽게 적용할 수 있는 간단한 팁을 소개합니다.</p>
        <div class="important">매일 아침 한 잔의 물로 하루를 시작하세요. 몸의 신진대사를 촉진하고, 활기를 더할 수 있습니다.</div>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=cK2jBEcCD9U" target="_blank" style="color: #333; text-decoration: none;">
                https://www.youtube.com/watch?v=cK2jBEcCD9U
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