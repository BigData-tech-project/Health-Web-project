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
    <form action="${pageContext.request.contextPath}/insertData" method="post">
        <label for="bloodPressure">혈압:</label>
        <input type="text" id="bloodPressure" name="bloodPressure" required><br><br>
        
        <label for="bloodSugar">혈당:</label>
        <input type="text" id="bloodSugar" name="bloodSugar" required><br><br>
        
        <label for="anemia">빈혈 여부:</label>
        <input type="text" id="anemia" name="anemia" required><br><br>
        
        <input type="submit" value="데이터 입력">
    </form>
</body>
</html>
