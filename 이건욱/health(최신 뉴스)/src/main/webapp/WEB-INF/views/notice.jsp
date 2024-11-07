<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항</title>
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        /* 추가적인 스타일링 */
        .notice-board-container {
            padding: 30px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-top: 20px;
        }
        .notice-item {
            padding: 15px;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s;
        }
        .notice-item:hover {
            background-color: #f0f0f0;
        }
        .notice-item a {
            color: #333;
            text-decoration: none;
        }
        .notice-item a:hover {
            text-decoration: underline;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            border-top: 1px solid #ddd;
        }
        .write-button {
            margin-bottom: 20px;
            text-align: right;
        }
        .write-button a {
            text-decoration: none;
            color: #fff;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
        }
        .write-button a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="notice-board-container">
            <h2>공지사항</h2>
            
            <!-- 공지사항 글쓰기 버튼 -->
            <div class="write-button">
                <a href="Notice/writeNotice">공지사항 글쓰기</a>
            </div>
            
            <!-- 공지사항 목록 조회 -->
            <div class="notice-item">
                <a href="noticeDetail.jsp?id=1">공지사항 제목 1</a>
                <p class="text-muted">2024-11-01</p>
            </div>
            <div class="notice-item">
                <a href="noticeDetail.jsp?id=2">공지사항 제목 2</a>
                <p class="text-muted">2024-11-02</p>
            </div>
            <div class="notice-item">
                <a href="noticeDetail.jsp?id=3">공지사항 제목 3</a>
                <p class="text-muted">2024-11-03</p>
            </div>
            <div class="notice-item">
                <a href="noticeDetail.jsp?id=4">공지사항 제목 4</a>
                <p class="text-muted">2024-11-04</p>
            </div>
            <div class="notice-item">
                <a href="noticeDetail.jsp?id=5">공지사항 제목 5</a>
                <p class="text-muted">2024-11-05</p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- 홈페이지 하단 카피라이트 영역 -->
    <div class="footer">
        <p>© 2024 건강 관리 프로그램. All rights reserved.</p>
    </div>
</body>
</html>
