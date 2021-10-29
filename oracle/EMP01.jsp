<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%! Connection conn=null;
    PreparedStatement pstmt= null;
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    String uid="hr";
    String pass="1234";
    String sql="insert into EMP values(?,?,?)";
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String address = request.getParameter("address");
String ssn = request.getParameter("ssn");
try {
	//1단계 JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//2단계 데이터베이스 연결 객체인 Connection 생성
	conn =DriverManager.getConnection(url,uid,pass);
	//3단계 Statement 객체 생성하기
	pstmt = conn.prepareStatement(sql);
	//4단계 바인딩 변수를 채운다
	pstmt.setString(1, name);
	pstmt.setString(2, address);
	pstmt.setString(3, ssn);
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}finally {
	try{
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	}catch(Exception e){	
	e.printStackTrace();
	}
}

%>
<h3>사원 정보 추가</h3>
<a href="empAllmember.jsp">회원 전체 목록 보기</a>
</body>
</html>