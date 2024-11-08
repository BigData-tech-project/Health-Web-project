<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>건강 관련 최신 뉴스</title>
        <jsp:include page="/WEB-INF/views/include/head.jsp" />
        <style>
            .news-section {
                margin-top: 50px;
                padding: 20px;
                background-color: #f9f9f9;
                border-radius: 8px;
            }
            .news-section h2 {
                text-align: center;
                color: #333;
            }
            .news-card {
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 15px;
                margin: 15px auto;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                background-color: #fff;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
                max-width: 600px; /* 기본 모바일 너비 설정 */
            }
            .news-card h3 {
                font-size: 1.2em;
                margin-bottom: 10px;
                color: #007bff;
            }
            .news-card a {
                text-decoration: none;
                color: #007bff;
            }
            .news-card a:hover {
                text-decoration: underline;
            }

            /* PC 화면에서 카드 너비 조정 */
            @media (min-width: 1024px) {
                .news-card {
                    max-width: 1000px;
                }
            }
        </style>
    </head>
    <body id="page-top">
        <jsp:include page="/WEB-INF/views/include/nav-bar.jsp" />

        <!-- 건강 관련 최신 뉴스 섹션 -->
        <section class="page-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="news-section">
                            <h2>건강 관련 최신 뉴스</h2>
                            <c:if test="${not empty newsData}">
                                <div class="news-list">
                                    <c:forEach var="news" items="${newsData}">
                                        <div class="news-card">
                                            <h3><a href="${news.link}" target="_blank">${news.title}</a></h3>
                                            <p>${news.description}</p>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                            <c:if test="${not empty errorMessage}">
                                <div class="error">${errorMessage}</div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    </body>
</html>
