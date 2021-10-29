<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="msg" value="Hello"></c:set>
\${msg} =${msg}<br>
<c:set var="age">
30
</c:set>
\${age}=${age}<hr>
<c:set var="member" value="<%= new date1025.MemberBean() %>"></c:set>
<c:set target="${member}" property="name" value="김지원"></c:set>
<c:set target="${member}" property="userid">jeewon3665</c:set>
\${member}=${member.name}<hr>
\${member.name}=${member.userid}<hr>
<c:set var="add" value="${10+5}"></c:set>
\${add} =${add}<br>
<c:set var="flag" value="${10>5}"></c:set>
\${flag} =${flg}<br>
</body>
</html>