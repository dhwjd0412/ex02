<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>사용자 등록</title>
</head>
<body>
	<h1>[사용자등록]</h1>
<form action="minsert" method="post">
	<table border=1 width=500>
	
		<tr>
			<td width=100>아이디</td>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userpw" ></td>
		</tr>
		<tr>
			<td>성명</td>
			<td><input type="text" name="username" ></td>
		</tr>
	</table>
	<input type="submit" value="저장">
	<input type="reset" value="취소">
	<input type="button" value="목록" onClick="location.href='mlist'">
</form>
</body>
</html>