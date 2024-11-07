<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/WEB-INF/views/include/mypage-head.jsp" %> <!-- 공통 head 파일 -->
    <title>My Page</title>
    <style>
    	/* Center the container on the page */
		body {
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    min-height: 100vh; /* Ensure it takes the full viewport height */
		    margin: 0;
		    background-color: #f9f9f9; /* Background color for the page */
		}
		.container.my-5 {
            max-width: 1200px;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/views/include/mypage-nav-bar.jsp" %> <!-- 상단바 포함 -->

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow p-4">
                    <h1 class="text-center text-success">마이페이지</h1>
                    <c:set var="userId" value="${sessionScope.id}" />
                    <c:set var="userName" value="${sessionScope.name}" />
                    <c:if test="${not empty userId}">
                        <p class="info text-center">${userName}님이 로그인 중입니다.</p>
                        <div class="button-group d-flex flex-column align-items-center">
                            <a href="user_data/insert" class="btn btn-success my-2 w-100">건강 데이터 수치 입력</a>
                            <a href="user_data/showData" class="btn btn-success my-2 w-100">건강 데이터 대시보드</a>
                            <a href="${pageContext.request.contextPath}/" class="btn btn-primary my-2 w-100">홈페이지</a>
	    					<a href="user/updatePw" class="btn btn-primary my-2 w-100">비밀번호 수정</a>
                            <a href="${pageContext.request.contextPath}/user/deleteUser" class="btn btn-danger my-2 w-100">회원탈퇴</a>
                            <a href="${pageContext.request.contextPath}/user/logout" class="btn btn-danger my-2 w-100">로그아웃</a>
                        </div>
                    </c:if>
                    <c:if test="${empty userId}">
                        <p class="info text-center">로그인하여 이 페이지를 보실 수 있습니다.</p>
                        <a href="${pageContext.request.contextPath}/user/login" class="btn btn-primary w-100">로그인하러 가기</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery, Popper.js, and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
