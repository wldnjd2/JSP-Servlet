<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!public int sum(int a) {
		int total = 0;
		for (int i = 1; i <= a; i++) {
			total += i;
		}
		return total;
	}%>
<h1>임의 값을 1부터 더하기</h1>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	for(int i=1; i<num; i++)
	{
		out.print(i+"+");
	}
	out.print(num+"="+sum(num));
%>
</body>
</html>