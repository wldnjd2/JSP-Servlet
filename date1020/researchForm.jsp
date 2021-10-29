<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>설문 조사</title>
<script type="text/javascript">
	function check(){
		if(document.surbey.name.value==""{
			alert("이름을 입력하세요.")
			survey.name.focus();
			return false;
		}
	}
</script>
<style>
label {
	display: inline-block;
	float: left;
	width: 200px;
}
#button{
	text-align:center;
}
</style>
</head>
<body>
<form name="survey" action="123" method="post">

<h1>설문조사</h1>
<label>이름: </label><input type="text" name="name"><br>
<label>성별: </label>	
	<input type="radio" id="gender" name="gender" value="man">남자
	<input type="radio" id="gender" name="gender" value="woman">여자
	<br>
<label>좋아하는 계절:</label>
	<input type="checkbox" name="season" value="1">봄
	<input type="checkbox" name="season" value="2">여름
	<input type="checkbox" name="season" value="3">가을
	<input type="checkbox" name="season" value="4">겨울
	<br>
<label><div id="button">	
<input type="submit" value="전송" onclick="return">
<input type="reset" value="취소">	
</div></label>
</form>
</body>
</html>