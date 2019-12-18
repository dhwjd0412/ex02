<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>주소록</title>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 style="text-align:center;">[주소록]</h1>
<form name="frm" action="mupdate" method="post">
	<table class="table table-borderd">
		<tr>
			<td>NO.</td>
			<td><input type="text" name="id" value="${vo.id}"></td>
		</tr>
		<tr>
			<td>NAME.</td>
			<td><input type="text" name="name" value="${vo.name}"></td>
		</tr>
		<tr>
			<td>TEL.</td>
			<td><input type="text" name="tel" value="${vo.tel}"></td>
		</tr>
		<tr>
			<td>ADDRESS.</td>
			<td><input type="text" name="address" value="${vo.address}"></td>
		</tr>
	</table>
	<input type="submit" value="저장">
	<input type="reset" value="취소">
	<input type="button" value="목록" onClick="location.href='alist'">
	<input type="button" value="삭제" onClick="funDelete()">
</form>
	<script>
		function funDelete(){
			frm.action="adelete";
			frm.method="post";
			frm.submit();
		}
	</script>
</body>
</html>