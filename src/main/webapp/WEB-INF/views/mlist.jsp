<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>사용자 목록</title>
		
</head>
<body>
	<h1>[사용자목록]</h1>
	<table border=1 width=700>
		<tr>
			<td width=100>아이디</td>
			<td width=100>비밀번호</td>
			<td width=100>성명</td>
			<td width=200>이메일</td>
			<td width=200>등록일</td>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr onClick="location.href='mread?userid=${vo.userid}'">
				<td width=100>${vo.userid}</td>
				<td width=100>${vo.userpw}</td>
				<td width=100>${vo.username}</td>
				<td width=200>${vo.email}</td>
				<td width=200><fmt:formatDate value="${vo.regdate}"
						pattern="yyyy년MM월dd일 hh:mm:ss" /></td>
		</c:forEach>
		<tr>
	</table>
	<input type="button" value="입력" onClick="location.href='minsert'">
</body>
</html>