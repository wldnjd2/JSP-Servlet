<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� ���</title>

</head>
<body>
<h1>���� ���� ���</h1>
<% 
	req.setCharacterEncoding("UTF-8");
	String name = req.getParameter("name");
	out.println("�̸� : <b>"+name+"</b><br>");
	
	String gender = req.getParameter("gender");
	out.println("���� : ");
	if(gender.equals("man") {
		out.println("����<br>");
	}else {
		out.println("����<br>");
	}
	String seasonArr[] = request.getParameterValues("season");
	out.println("����� �����ϴ� ������ ");
	
	for(String season : seasonArr){ /*���� ����*/
		int n =Integer.parseInt(season);
	switch(n){
	case 1:
		out.println("�� �Դϴ�");
		break;
	case 2:
		out.println("���� �Դϴ�");
		break;
	case 3:
		out.println("���� �Դϴ�");
		break;
	case 4:
		out.println("�ܿ� �Դϴ�");
		break;
	}
		
	}
	out.print("<br>");
	out.print(" <a href ='javascript:history.go(-1)'>�ٽ�</a>" ); 
	%>

</body>
</html>