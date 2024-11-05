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
    <p>체중 관리는 건강을 유지하고 각종 질병을 예방하는 데 중요한 역할을 합니다. 적절한 식단과 운동을 통해 건강한 체중을 유지하고, 활기찬 생활을 할 수 있습니다.</p>

    <div class="section">
        <h2>체중 관리의 필요성</h2>
        <p>체중 관리는 단순히 외모를 위한 것이 아니라 건강을 위해 필요합니다. 비만이나 과체중은 심혈관 질환, 당뇨병, 고혈압과 같은 만성 질환의 위험을 높이고, 반대로 저체중은 면역력 약화, 영양 불균형을 초래할 수 있습니다.</p>
    </div>

    <div class="section">
        <h2>올바른 체중 관리 습관</h2>
        <p>체중을 건강하게 관리하기 위해 다음과 같은 습관을 유지하는 것이 중요합니다:</p>
        <ul class="tips-list">
            <li>건강한 식단을 꾸준히 유지하세요. 과일, 채소, 단백질, 통곡물을 포함한 균형 잡힌 식사를 하세요.</li>
            <li>주기적인 운동으로 신체 활동을 유지하세요. 유산소 운동과 근력 운동을 혼합하여 체지방을 관리하세요.</li>
            <li>수분을 충분히 섭취하여 체내 수분 균형을 유지하세요.</li>
            <li>스트레스를 관리하고, 충분한 수면을 취하여 신체 회복을 돕습니다.</li>
        </ul>
    </div>

    <div class="section">
        <h2>체중 증가와 감소의 원인</h2>
        <p>체중 증가는 칼로리 섭취 과다, 운동 부족, 스트레스, 호르몬 불균형 등의 이유로 발생할 수 있으며, 반대로 체중 감소는 칼로리 섭취 부족, 과도한 신체 활동, 질병이나 스트레스로 인해 발생할 수 있습니다. 각자의 체질에 맞는 관리가 필요합니다.</p>
    </div>

    <div class="section">
        <h2>체중 관리 팁</h2>
        <p>체중 관리를 위한 간단한 팁을 실천해보세요:</p>
        <ul class="tips-list">
            <li>음식을 천천히 씹고 먹는 습관을 들이세요. 포만감을 더 쉽게 느낄 수 있습니다.</li>
            <li>외식할 때는 양 조절을 하거나 건강한 메뉴를 선택하세요.</li>
            <li>규칙적인 식사와 간식을 통해 혈당과 에너지 수준을 안정적으로 유지하세요.</li>
            <li>기록을 통해 자신이 무엇을 먹고 얼마나 활동하는지 파악하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>체중 관리 시 주의 사항</h2>
        <p>체중 관리 시 지나친 다이어트나 극단적인 식단은 오히려 건강을 해칠 수 있습니다. 충분한 영양을 섭취하며 천천히 체중을 줄이는 것이 중요합니다. 개인의 건강 상태에 따라 전문가의 조언을 구하는 것도 좋은 방법입니다.</p>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=cK2jBEcCD9U" target="_blank" style="color: #333; text-decoration: none;">
                체중 관리에 대한 유익한 영상 보기
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
