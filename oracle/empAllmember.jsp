<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import ="java.sql.*" %>
     <%!//선언부는 첫 방문자
    Connection conn=null;
    Statement stmt= null;
    ResultSet rs = null;
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    String uid = "hr";
    String pass = "1234";
    String sql ="select * from EMP";
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width='800' border='1'>
<tr>
<th>NAME</th>
<th>ADDRESS</th>
<th>SSN</th>
</tr>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn= DriverManager.getConnection(url, uid, pass);
stmt= conn.createStatement();
rs = stmt.executeQuery(sql);
while(rs.next()){
	out.println("<tr>");
	out.println("<td>"+rs.getString("name")+"</td>");
	out.println("<td>"+rs.getString("address")+"</td>");
	out.println("<td>"+rs.getString("ssn")+"</td>");
	out.println("</tr>");
}//while의 끝
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(rs != null)
			rs.close();
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>


</table>
</body>
</html>