<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>홈페이지 소개</title>
        <jsp:include page="/WEB-INF/views/include/head.jsp" />
        <style>
            .banner-container {
                width: 100%;
                height: 300px;
                overflow: hidden;
                position: relative;
                margin: 30px 0 20px;
            }
            .banner-container img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.3s ease-in-out;
            }
            .banner-container img:hover {
                transform: scale(1.1);
            }
            .button-group {
                text-align: center;
                margin-bottom: 20px;
            }
            .button-group button {
                margin: 0 15px;
                padding: 10px 20px;
                font-size: 18px;
                border: none;
                background-color: transparent;
                color: #000000;
                cursor: pointer;
                transition: color 0.3s, box-shadow 0.3s;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
                border-radius: 20px; /* 둥글게 설정 */
            }
            .button-group button:hover {
                color: #333333;
                box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.2);
            }
            .intro-section {
                display: none;
                padding: 30px;
                background-color: #f8f9fa;
                text-align: center;
                max-width: 1250px;
                margin: 0 auto 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                height: 500px;
            }
            .intro-section.active {
                display: block;
            }
            .intro-section h2 {
                color: #000000;
                font-size: 55px;
                font-weight: bold;
                text-align: left;
                margin-bottom: 60px;
            }
            .intro-section p {
                font-size: 19px;
                color: #333;
                line-height: 1.6;
                text-align: left;
                margin-bottom: 20px;
                
            }
            
              #greeting {
                height: 600px; /* 원하는 높이로 설정 */
            }
        </style>
        <script>
            function showSection(sectionId) {
                // 모든 섹션 숨기기
                document.querySelectorAll('.intro-section').forEach(function(section) {
                    section.classList.remove('active');
                });
                // 선택된 섹션 표시
                document.getElementById(sectionId).classList.add('active');
            }
        </script>
    </head>
    <body id="page-top">
        <jsp:include page="/WEB-INF/views/include/nav-bar.jsp" />

        <!-- 배너 이미지 섹션 -->
        <c:set var="bannerUrl" value="${pageContext.request.contextPath}/resources/images/healthcare_bannerimg.jpeg" />
        <div class="banner-container">
            <img src="${bannerUrl}" alt="Banner Image">
        </div>

        <!-- 버튼 그룹 -->
        <div class="button-group">
            <button onclick="showSection('overview')">개요</button>
            <button onclick="showSection('vision')">비전</button>
            <button onclick="showSection('greeting')">인사말</button>
        </div>

        <!-- 인트로 섹션 -->
        <div id="overview" class="intro-section active">
				<h2>개요</h2>
				<p>이 건강관리 프로그램 홈페이지는 사용자들의 건강을 종합적으로 관리하고 개선하는 데 도움을 주기 위해 개발된 플랫폼입니다.</p>
				
				
				<p>최신 건강 뉴스를 신속하게 제공하는 것은 물론,<br>
				사용자가 언제든 최신 정보를 쉽게 얻을 수 있도록 검색 API를 활용한 자동 업데이트 시스템을 도입했습니다.<br>
				로그인한 사용자의 개인정보를 기반으로 한 맞춤형 건강 데이터를 분석하여,<br>
				건강 상태에 대한 객관적이고 실질적인 정보를 제공합니다.<br>
				혈압, 혈당, 심박수, 체온, 체중 등의 주요 건강 지표를 수집하고 분석하여,<br>
				사용자가 자신의 건강 상태를 더 깊이 이해하고, 필요한 조치를 취할 수 있도록 돕습니다.</p>
				
				<p>이 프로그램은 사용자가 일상 속에서 쉽게 건강 관리를 실천하고 개선할 수 있도록 설계된,<br>
				종합적인 건강 관리 솔루션을 제공하는 것이 목표입니다.</p>
				
        </div>
        <div id="vision" class="intro-section">
            <h2>비전</h2>
                <p>저희는 최신 의료 데이터와 분석 기술을 결합하여 개인의 건강 관리를 새로운 수준으로 끌어올리는 것을 목표로 합니다.</p>

				<p>이 플랫폼의 비전은 단순히 정보를 제공하는 데 그치지 않고, <br>
				사용자 개개인의 건강 상태에 맞춘 분석과 권장 사항을 통해 실질적인 도움을 주는 것입니다.<br>
				건강 관리가 복잡하거나 어려운 것이 아니라, 누구나 자신의 상태에 맞게 조절할 수 있는 일상적인 활동이 되도록 돕고자 합니다.<br>
				사용자들이 자신의 건강 상태를 심층적으로 이해하고 필요에 따라 적절한 조치를 취할 수 있도록, 개인 맞춤형 건강 정보를 제공하며, <br>
				장기적으로는 보다 건강하고 행복한 삶을 위한 방향을 제시하고자 합니다.</p>

				<p>우리가 제공하는 맞춤형 건강 관리 솔루션이 일상 속에서 변화를 만들어내고, 건강을 최우선으로 하는 삶을 영위할 수 있도록 돕는 데에 기여하고자 합니다.</p>
        </div>
        <div id="greeting" class="intro-section">
            <h2>인사말</h2>
                <p>안녕하세요</p>

				<p>저희 건강관리 프로그램을 찾아주셔서 감사합니다.</pr>

				<p>이 플랫폼은 여러분의 건강을 지키기 위한 파트너로서, <br>
				최신 건강 뉴스와 데이터 기반 맞춤형 건강 정보를 제공하는 것을 목표로 하고 있습니다.<br>
				현대 사회에서 건강은 삶의 중요한 요소이며, 다양한 스트레스와 생활 습관이 건강에 큰 영향을 미치고 있습니다.<br>
				저희는 사용자의 건강을 데이터 중심으로 분석하여, 각자의 건강 상태에 맞는 최적의 정보와 관리 방법을 제공합니다.
				혈압, 혈당, 심박수, 체온, 체중 등 다양한 건강 지표를 통해 사용자에게 실질적이고 구체적인 건강 상태를 파악할 수 있는 자료를 제공하며,<br>
				이를 통해 사용자 스스로가 자신의 건강을 책임지고 관리할 수 있도록 돕습니다.</p>

				<p>항상 여러분의 건강한 삶을 지원하며 함께 성장할 수 있는 플랫폼이 되겠습니다. </p>

				<p>감사합니다.</p>

        </div>

        <!-- Footer-->
        <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    </body>
</html>
