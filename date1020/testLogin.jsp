<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String id="jeewon";
String pwd="123";
String name="김지원";

if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
	
	response.sendRedirect("loginMain.jsp?name=" + URLEncoder.encode(name,"UTF-8"));
} else {
	response.sendRedirect("loginForm.jsp");
}

%>
</body>
</html>