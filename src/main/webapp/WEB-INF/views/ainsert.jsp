<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>주소록</title>
</head>
<body>
	<h1>[주소록]</h1>
<form action="ainsert" method="post">
	<table border=1 width=500>
		<tr>
			<td>NAME.</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>TEL.</td>
			<td><input type="text" name="tel"></td>
		</tr>
		<tr>
			<td>ADDRESS.</td>
			<td><input type="text" name="address"></td>
		</tr>
	</table>
	<input type="submit" value="저장">
	<input type="reset" value="취소">
	<input type="button" value="목록" onClick="location.href='alist'">

</form>
	
</body>
	
</html>