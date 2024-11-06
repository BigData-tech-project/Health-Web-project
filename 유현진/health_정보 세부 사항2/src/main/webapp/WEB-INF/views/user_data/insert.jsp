<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>데이터 입력</title>
</head>
<body>
    <h1>건강 데이터 입력</h1>
    <!-- 경로를 명확히 /user_data/insertData로 수정 -->
    <form action="${pageContext.request.contextPath}/user_data/insertData" method="post">
        
        <label for="maxpressure">최고 혈압:</label>
        <input type="text" id="maxpressure" name="maxpressure" required><br><br>
        
        <label for="minpressure">최저 혈압:</label>
        <input type="text" id="minpressure" name="minpressure" required><br><br>
        
        <label for="sugar">혈당:</label>
        <input type="text" id="sugar" name="sugar" required><br><br>
        
        <label for="rate">심박수:</label>
        <input type="text" id="rate" name="rate" required><br><br>
        
        <label for="temp">체온:</label>
        <input type="text" id="temp" name="temp" required><br><br>
        
        <label for="weight">체중:</label>
        <input type="text" id="weight" name="weight" required><br><br>
        
        <input type="submit" value="데이터 입력">
    </form>
</body>
</html>
