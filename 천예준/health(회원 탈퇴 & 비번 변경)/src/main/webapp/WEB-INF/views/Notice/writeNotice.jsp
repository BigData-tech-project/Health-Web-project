<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 글쓰기</title>
    <!-- Bootstrap CSS 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        /* 추가적인 스타일링 */
        .write-notice-container {
            padding: 30px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-top: 20px;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            border-top: 1px solid #ddd;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-actions {
            text-align: right;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="write-notice-container">
            <h2>공지사항 글쓰기</h2>
            <form action="notice_list" method="post">
                <div class="form-group">
                    <label for="title">제목</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label for="content">내용</label>
                    <textarea class="form-control" id="content" name="content" rows="10" required></textarea>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">등록</button>
                    <a href="/notice/list" class="btn btn-default">취소</a>
                </div>
            </form>
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