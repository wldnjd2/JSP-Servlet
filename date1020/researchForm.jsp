<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
<script type="text/javascript">
	function check(){
		if(document.surbey.name.value==""{
			alert("�̸��� �Է��ϼ���.")
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

<h1>��������</h1>
<label>�̸�: </label><input type="text" name="name"><br>
<label>����: </label>	
	<input type="radio" id="gender" name="gender" value="man">����
	<input type="radio" id="gender" name="gender" value="woman">����
	<br>
<label>�����ϴ� ����:</label>
	<input type="checkbox" name="season" value="1">��
	<input type="checkbox" name="season" value="2">����
	<input type="checkbox" name="season" value="3">����
	<input type="checkbox" name="season" value="4">�ܿ�
	<br>
<label><div id="button">	
<input type="submit" value="����" onclick="return">
<input type="reset" value="���">	
</div></label>
</form>
</body>
</html>