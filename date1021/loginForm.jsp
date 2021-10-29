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
float: left;
width: 100px;
}
#button{
	text-align: center;
}
</style>
<script type="text/javascript">
	function check(){
		if(document.frm.id.value.length==0){
			alert("아이디를 입력하세요")
			frm.id.focus();
			return false;		
		}
		if(document.frm.pwd.value.length==0){
			alert("비밀번호를 입력하세요")
			frm.pwd.focus();
			return false;		
		}
		return true;
		}

</script>
</head>
<body>

<form name="frm" action="testLogin.jsp" method="post">
<label>아이디:</label><input type="text" name=id><br>
<label>비밀번호:</label><input type="text" name="pwd"><br>
<div id="button"><label><input type="submit" value="로그인" onclick="return check()"></label></div><br>

</form>
</body>
</html>