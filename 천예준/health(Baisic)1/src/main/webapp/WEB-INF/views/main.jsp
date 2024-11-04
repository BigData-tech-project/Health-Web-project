<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav-bar.jsp" />
<!-- content start -->

<h2>main page</h2>

	<c:if test="${not empty user}">
        <h3>User ID: ${user.id}</h3>
    </c:if>
    <c:if test="${empty user}">
        <h3>로그인하지 않았습니다.</h3>
    </c:if>

<!-- end content -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>