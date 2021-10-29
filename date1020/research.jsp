<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>설문 조사 결과</title>

</head>
<body>
<h1>설문 조사 결과</h1>
<% 
	req.setCharacterEncoding("UTF-8");
	String name = req.getParameter("name");
	out.println("이름 : <b>"+name+"</b><br>");
	
	String gender = req.getParameter("gender");
	out.println("성별 : ");
	if(gender.equals("man") {
		out.println("남자<br>");
	}else {
		out.println("여자<br>");
	}
	String seasonArr[] = request.getParameterValues("season");
	out.println("당신이 좋아하는 계절은 ");
	
	for(String season : seasonArr){ /*향상된 포문*/
		int n =Integer.parseInt(season);
	switch(n){
	case 1:
		out.println("봄 입니다");
		break;
	case 2:
		out.println("여름 입니다");
		break;
	case 3:
		out.println("가을 입니다");
		break;
	case 4:
		out.println("겨울 입니다");
		break;
	}
		
	}
	out.print("<br>");
	out.print(" <a href ='javascript:history.go(-1)'>다시</a>" ); 
	%>

</body>
</html>