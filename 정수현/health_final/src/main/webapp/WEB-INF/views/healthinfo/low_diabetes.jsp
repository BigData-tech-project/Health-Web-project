<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>저혈당 관리 방법</title>
    <style>
        /* 전체 페이지 스타일 */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f4f8;
            color: #333;
        }

        /* 컨텐츠 컨테이너 스타일 */
        .content {
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* 제목 스타일 */
        h1 {
            color: #64b5f6;
            text-align: center;
            margin-bottom: 20px;
        }

        /* 섹션 스타일 */
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
            color: #64b5f6;
            margin-bottom: 10px;
        }

        /* 리스트 스타일 */
        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            margin: 10px 0;
            padding-left: 20px;
            position: relative;
        }

        /* 체크 아이콘 */
        ul li::before {
            content: "✔️";
            position: absolute;
            left: 0;
            color: #64b5f6;
        }

        /* 중요 정보 박스 */
        .important {
            background-color: #e3f2fd;
            border-left: 4px solid #64b5f6;
            padding: 10px;
            margin: 20px 0;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="content">
    <h1>저혈당 관리 방법</h1>

    <!-- 저혈당 정의 -->
    <div class="section">
        <h2>저혈당이란?</h2>
        <p>저혈당은 혈당 수치가 정상보다 낮은 상태를 의미합니다. 일반적으로 혈당이 70mg/dL 이하로 떨어질 때 저혈당으로 간주되며, 즉각적인 조치가 필요할 수 있습니다.</p>
    </div>

    <!-- 저혈당의 원인 -->
    <div class="section">
        <h2>저혈당의 주요 원인</h2>
        <p>저혈당은 여러 가지 원인으로 발생할 수 있으며, 대표적인 원인은 다음과 같습니다:</p>
        <ul>
            <li>인슐린 또는 당뇨 약물 과다 복용</li>
            <li>식사 거르기 또는 적은 식사량</li>
            <li>격렬한 신체 활동</li>
            <li>과도한 음주</li>
            <li>기타 건강 문제 (간 또는 신장 질환 등)</li>
        </ul>
    </div>

    <!-- 저혈당의 증상 -->
    <div class="section">
        <h2>저혈당의 증상</h2>
        <p>저혈당의 주요 증상은 다음과 같으며, 빠르게 인지하고 대처하는 것이 중요합니다:</p>
        <ul>
            <li>어지러움 및 두통</li>
            <li>손 떨림 또는 발한</li>
            <li>피로감 및 무기력</li>
            <li>불안감 또는 혼란</li>
            <li>심한 경우 의식 소실</li>
        </ul>
    </div>

    <!-- 저혈당 관리 방법 -->
    <div class="section">
        <h2>저혈당 관리 방법</h2>
        <p>저혈당을 효과적으로 관리하기 위해 다음과 같은 방법을 실천할 수 있습니다:</p>
        <ul>
            <li>간단한 탄수화물 (사탕, 주스 등) 섭취로 혈당을 빠르게 올리세요.</li>
            <li>정기적인 식사를 통해 혈당이 급격히 떨어지지 않도록 하세요.</li>
            <li>운동 전 후에 충분한 영양을 섭취하여 혈당을 안정적으로 유지하세요.</li>
            <li>혈당 모니터링을 통해 자신의 상태를 지속적으로 점검하세요.</li>
            <li>필요시 의사와 상의하여 적절한 약물 복용 계획을 세우세요.</li>
        </ul>
    </div>

    <!-- 주의 사항 -->
    <div class="important">
        ⚠️ 저혈당이 발생하면 즉시 간단한 탄수화물을 섭취하여 혈당을 올리고, 심각한 경우에는 의료 전문가의 도움을 받으세요. 의식 소실 시에는 즉시 응급 조치를 취해야 합니다.
    </div>

    <!-- 추가적인 건강 관리 팁 -->
    <div class="section">
        <h2>추가적인 건강 관리 팁</h2>
        <p>저혈당을 예방하고 관리하기 위해 다음과 같은 생활 습관을 유지하는 것이 좋습니다:</p>
        <ul>
            <li>규칙적인 식사를 통해 혈당의 안정성을 유지하세요.</li>
            <li>과도한 음주를 피하고, 운동 시 주의를 기울이세요.</li>
            <li>스트레스를 줄이고 충분한 수면을 취하여 건강을 유지하세요.</li>
            <li>주변 사람들에게 저혈당 발생 시 대처 방법을 알려두세요.</li>
        </ul>
    </div>

    <!-- 관련 링크 -->
    <div class="section">
        <h2>관련 링크</h2>
        <div class="important">
            <a href="https://www.youtube.com/watch?v=148gPIOm1ug" target="_blank" style="color: #333; text-decoration: none;">
                https://www.youtube.com/watch?v=148gPIOm1ug
            </a>
        </div>
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
</div>

</body>
</html>