<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie cookie = new Cookie("id","");
Cookie cookie2 = new Cookie("pwd","");
cookie.setMaxAge(0);
cookie2.setMaxAge(0);
response.addCookie(cookie);
response.addCookie(cookie2);
%>
<h3>id 쿠키가 삭제되었습니다.</h3>
<a href="getCookies.jsp">
쿠키 삭제를 확인하려면 클릭하세요.</a>
</body>
</html>