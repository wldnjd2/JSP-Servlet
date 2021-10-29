<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6강_연습문제01</title>
<script type ="text/javascript" src="practice.js"></script><!--           -->
<style>

label{
display:inline-block;
float : left;
width: 200px;
}
a{
line-height: 25px;<!--글자 줄간격-->
}
red{
	color:red;
}

</style>
</head>
<body>
<a><form method="get" action="practice" >

<label>이름        </label><red>* </red><input type="text" name="name"><br>
<label>주민등록번호  </label><red>* </red><input type="text" name="id_num1"> - <input type="text" name="id_num2"><br>
<label>아이디     </label><red>* </red><input type="text" name="id"><br>
<label>비밀번호</label><red>* </red><input type="text" name="pwd"><br>
<label>비밀번호확인 </label><red>* </red><input type="text" name="pwd_chk"><br>
<label>이메일</label> &nbsp;&nbsp;<input type="text" name="email1"> @ <input type="text" name="email2">
<select id ="emailaddr" name="emailaddr" size="1">
<option value="naver">naver.com</option>
<option value="daum">daum.net</option>
<option value="gmail">gmail.com</option>
</select><br>
<label>우편번호</label> &nbsp;&nbsp;<input type="text" name="post"><br>
<label>주소 </label> &nbsp;&nbsp;<input type="text" name="addr1"> <input type="text" name="addr2"><br>
<label>핸드폰</label>  &nbsp;&nbsp;<input type="text" name="phone"><br>
<label>직업</label> &nbsp;
<select id="job" name="job" size='3' multiple="multiple">
<option value ="컴퓨터/인터넷">공무원</option>
<option value ="언론">언론</option>
<option value ="공무원">공무원</option>
</select></label><br>

<label>
메일/SMS 정보 수신</label> &nbsp;&nbsp;<input type="radio" id="accept" name="sms" value="yes" checked>수신
<input type="radio" id="refuse" name="sms" value="no">수신거부
<br>
<label>
관심분야 </label>  &nbsp;&nbsp;<input type ="checkbox" name="item" value="생두">생두
 <input type ="checkbox" name="item" value="원두">원두
  <input type ="checkbox" name="item" value="로스팅">로스팅
  <input type ="checkbox" name="item" value="핸드드립">핸드드립
 <input type ="checkbox" name="item" value="에스프레소">에스프레소
  <input type ="checkbox" name="item" value="창업">창업 <br>



<input type="submit" value="회원가입" onclick="return check()">
<input type="reset" value="취소">





</form>
</a>
</body>
</html>