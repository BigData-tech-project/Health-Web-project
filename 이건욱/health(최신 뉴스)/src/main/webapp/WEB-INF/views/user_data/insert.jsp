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
        <label for="MaxbloodPressure">최고 혈압:</label>
        <input type="text" id="MaxbloodPressure" name="maxBloodPressure" required><br><br>
        
        <label for="MinbloodPressure">최저 혈압:</label>
        <input type="text" id="MinbloodPressure" name="minBloodPressure" required><br><br>
        
        <label for="bloodSugar">혈당:</label>
        <input type="text" id="bloodSugar" name="bloodSugar" required><br><br>
        
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
