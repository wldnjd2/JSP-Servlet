<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = "yj182637";
String pwd = "1234";
String name = "김유진";
request.setCharacterEncoding("UTF-8");
if (id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
	response.sendRedirect("08_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
} else {
	response.sendRedirect("08_loginForm.jsp");
}
%>