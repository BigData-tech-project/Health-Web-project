<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LoginPage</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/style.css"/>
  </head>
  <body>
    <div class="login-container">
      <div class="login-box">
        <h2>Login</h2>
        <form action="${pageContext.request.contextPath}/login" method="post">

          <div class="input-group">
            <label for="id">ID</label>
            <input type="text" id="id" name="id" required />
          </div>
          
          <div class="input-group">
            <label for="pw">Password</label>
            <input type="password" id="pw" name="password" required />
          </div>

          <div class="input-group">
            <label for="pwCheck">Password 중복확인</label>
            <input type="password" id="pwCheck" name="pwCheck" required />
          </div>
          
          <div class="input-group">
            <label for="name">UserName</label>
            <input type="text" id="name" name="name" required />
          </div>
          
          <div class="input-group">
            <label for="username">Gender</label>
            <input type="text" id="gender" name="gender" required />
          </div>
          
          <div class="input-group">
            <label for="username">Age</label>
            <input type="text" id="age" name="age" required />
          </div>
          
          <div class="input-group">
            <button type="submit" class="login-button">join</button>
          </div>
          
          <div class="input-group">
    		<button type="button" class="cancel-button" onclick="location.href=${pageContext.request.contextPath}/main">Cancel</button>
		  </div>
		  
        </form>
      </div>
    </div>
  </body>
</html>
