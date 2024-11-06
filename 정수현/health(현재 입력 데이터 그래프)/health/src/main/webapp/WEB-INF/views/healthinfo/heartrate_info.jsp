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
    <p>심박수 관리는 전반적인 심혈관 건강을 유지하고 심혈관 질환의 위험을 줄이는 데 중요한 역할을 합니다. 적정 심박수를 유지하면 신체의 효율성과 체력을 높이고, 스트레스를 줄이는 데 도움이 됩니다.</p>
    <p>정기적인 심박수 관리를 통해 건강한 생활을 유지하세요.</p>

    <div class="section">
        <h2>심박수 관리의 필요성</h2>
        <p>심박수는 심장의 건강을 반영하는 중요한 지표로, 너무 높거나 낮은 심박수는 심혈관 건강에 부정적인 영향을 미칠 수 있습니다. 적정한 심박수를 유지하면 심장에 부담을 줄이고, 심혈관 질환 예방에 기여할 수 있습니다.</p>
    </div>

    <div class="section">
        <h2>심박수를 조절하는 습관</h2>
        <p>아래의 습관을 실천하여 심박수를 안정적으로 유지할 수 있습니다:</p>
        <ul class="tips-list">
            <li>규칙적인 유산소 운동(걷기, 자전거 타기 등)을 통해 심장 기능을 강화하세요.</li>
            <li>명상, 요가 등으로 스트레스를 관리하여 심박수 변동을 줄이세요.</li>
            <li>카페인과 흡연은 심박수를 높일 수 있으므로 적절히 조절하세요.</li>
            <li>적절한 체중을 유지하여 심장에 과도한 부담을 주지 않도록 하세요.</li>
            <li>정기적인 심박수 측정과 기록을 통해 자신의 건강 상태를 모니터링하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>심박수 이상이 나타나는 원인</h2>
        <p>심박수가 너무 높거나 낮은 경우, 다음과 같은 원인이 있을 수 있습니다:</p>
        <ul class="tips-list">
            <li>스트레스나 불안으로 인한 일시적인 심박수 증가</li>
            <li>고혈압 또는 갑상선 질환과 같은 만성 질환</li>
            <li>수면 부족이나 과도한 신체 피로</li>
            <li>카페인 섭취 과다 또는 흡연</li>
            <li>심장 질환이나 신경계 이상</li>
        </ul>
    </div>

    <div class="section">
        <h2>심박수 관리 팁</h2>
        <p>심박수 관리를 위한 간단한 팁을 실천해보세요:</p>
        <ul class="tips-list">
            <li>정기적인 수면 패턴을 유지하여 신체 회복을 도우세요.</li>
            <li>자연에서 산책하거나 심호흡을 통해 마음을 안정시키세요.</li>
            <li>과식이나 기름진 음식은 피하고 균형 잡힌 식사를 유지하세요.</li>
            <li>규칙적으로 수분을 섭취하여 몸의 기능을 최적화하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>주의 사항</h2>
        <div class="important">
            ⚠️ 심박수가 너무 높거나 낮은 상태가 지속된다면 즉시 의료 전문가와 상담하세요. 심장 건강은 꾸준한 관리와 조기 대처가 중요합니다.
        </div>
    </div>

    <div class="section">
        <h2>추가적인 건강 관리 팁</h2>
        <p>심박수를 안정적으로 유지하기 위해서는 전반적인 생활 습관이 중요합니다. 규칙적인 운동과 건강한 식사, 적절한 스트레스 관리가 심박수 관리에 큰 도움이 됩니다.</p>
        <ul class="tips-list">
            <li>규칙적인 운동 루틴을 만들어 일관되게 유지하세요.</li>
            <li>식사 시 염분과 포화지방을 줄이고, 식이섬유를 포함한 건강한 식단을 섭취하세요.</li>
            <li>가벼운 명상이나 취미 생활을 통해 마음의 안정을 유지하세요.</li>
        </ul>
    </div>

    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=wzh6bQisLBI" target="_blank" style="color: #333; text-decoration: none;">
                심박수 관리에 대한 유익한 영상 보기
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
