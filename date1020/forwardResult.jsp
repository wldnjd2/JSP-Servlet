<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>    
 
 <%
 String age = request.getParameter("age");
 String name = (String)request.getAttribute("name");
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
forward 방식으로 이동된 페이지<br>
나이: <%age%><br>
이름: <%name%><br>
</body>
</html>