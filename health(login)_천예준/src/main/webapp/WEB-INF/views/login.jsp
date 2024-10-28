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
            <label for="username">ID</label>
            <input type="text" id="username" name="username" required />
          </div>
          <div class="input-group">
            <label for="password">PW</label>
            <input type="password" id="password" name="password" required />
          </div>
          <div class="input-group">
            <button type="submit" class="login-button">Login</button>
          </div>
          <div class="input-group">
    		<button type="button" class="cancel-button" onclick="location.href=${pageContext.request.contextPath}/main">Cancel</button>
		  </div>
        </form>
      </div>
    </div>
  </body>
</html>
