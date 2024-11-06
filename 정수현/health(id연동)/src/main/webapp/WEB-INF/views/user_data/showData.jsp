<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>입력한 건강 데이터 보기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #4CAF50;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>${sessionScope.id}님의 건강 데이터 기록</h1>
    
    <c:if test="${not empty dataList}">
        <table>
            <thead>
                <tr>
                    <th>날짜</th>
                    <th>최고 혈압</th>
                    <th>최저 혈압</th>
                    <th>심박수</th>
                    <th>체온</th>
                    <th>혈당</th>
                    <th>체중</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="data" items="${dataList}">
                    <tr>
                        <td><c:out value="${data.date}" /></td>
                        <td><c:out value="${data.maxPressure}" /></td>
                        <td><c:out value="${data.minPressure}" /></td>
                        <td><c:out value="${data.rate}" /></td>
                        <td><c:out value="${data.temperature}" /></td>
                        <td><c:out value="${data.bloodSugar}" /></td>
                        <td><c:out value="${data.weight}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    
    <c:if test="${empty dataList}">
        <p>현재 입력된 건강 데이터가 없습니다.</p>
    </c:if>

</body>
</html>
