<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="08_actionTagTest.jsp">
아이디 : <input type="text" name="userID"><br>
암 &nbsp; 호 : <input type="password" name="userPwd"><br>
<input type="radio" name="loginCheck" value="user"
checked="checked"> 사용자
<input type="radio" name="loginCheck" value="manager"> 관리자 <br>
<input type="submit" value="로그인">
</form>
</body>
</html>