<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
label{
display: inline-block;
float:left;
width:120px;
}
</style>
</head>
<body>

<h3>회원 정보 입력 폼</h3>
<form method="post" action="addMember.jsp" > 
<label>이름</label><input type="text" name="name"><br>
<label>아이디</label><input type="text" name="userid"><br>
<label>비밀번호</label><input type="pwd" name="pwd"><br>
<label>이메일</label><input type="email" name="email"><br>
<label>전화번호</label><input type="phone" name="phone"><br>
<label>등급 </label>
<input type="radio" name="admin" value="1" checked="checked">관리자
<input type="radio" name="admin" value="0">일반회원<br>
<label><input type="submit" value="전송">
<input type="reset" value="취소"></label>
</form>
</body>
</html>