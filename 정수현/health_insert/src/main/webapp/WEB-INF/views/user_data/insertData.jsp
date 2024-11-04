<%@ page import = "java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save insert data</title>
</head>
<body>
<%
    String maxpressure = request.getParameter("maxpressure");
    String minpressure = request.getParameter("minpressure");
    String sugar = request.getParameter("sugar");
    String rate = request.getParameter("rate");
    String temp = request.getParameter("temp");
    String weight = request.getParameter("weight");
    
    String url = "jdbc:mysql://localhost:3306/health";
    String user = "scott";
    String password = "tiger";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, user, password);
        
        // SQL 쿼리
        String sql = "INSERT INTO healthinfo (maxpressure, minpressure, sugar, rate, temp, weight) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        
        pstmt.setString(1, maxpressure);
        pstmt.setString(2, minpressure);
        pstmt.setString(3, sugar);
        pstmt.setString(4, rate);
        pstmt.setString(5, temp);
        pstmt.setString(6, weight);
        
        int rows = pstmt.executeUpdate();
        out.println("Data has been inserted successfully");
        
        pstmt.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
