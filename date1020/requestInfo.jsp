<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestInfo</title>
</head>
<body>

<%
	out.println("컨텍스트 패스:"+request.getContextPath()+"<br>");
	out.println("요청방식: "+request.getMethod()+"<br>");
	out.println("요청한 URL: "+request.getRequestURL()+"<br>");
	out.println("요청한 URI: "+request.getRequestURI()+"<br>");
	out.println("서버의 이름: "+request.getServerName()+"<br>");
	out.println("프로토콜: "+request.getProtocol()+"<br>");
%>

</body>
</html>