<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
     <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <!-- jQuery 추가 (Bootstrap의 JS가 필요) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Bootstrap JavaScript 추가 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>
<body>
    <h1>건강 관리 웹 사이트</h1>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/">3조</a>
<ul class="nav navbar-nav">
    <li class="active"><a href="${pageContext.request.contextPath}/intro">intro <span class="sr-only">(current)</span></a></li>
    <li><a href="${pageContext.request.contextPath}/healthInfo">건강 관리 정보</a></li>
    <li><a href="${pageContext.request.contextPath}/mypage">Mypage</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
    <li><a href="${pageContext.request.contextPath}/user/login">login</a></li>
</ul>
    </div>

  </div><!-- /.container-fluid -->
</nav>
</body>
</html>