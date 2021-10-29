<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>임의 값을 1부터 더하기</h2>
<%
int inputValue=Integer.parseInt(request.getParameter("inputValue"));
%>
<%
int sum=0;
	for(int i=1; i<=inputValue; i++){
		out.print(i);
		sum=sum+i;
		if(i==inputValue){
			out.print("=");
			out.print(sum);
		}else {out.print("+");}
	}
%>
</body>
</html>