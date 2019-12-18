<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>가수보기</title>
</head>
<body>
	<h1>[가수보기]</h1>
	<form name="frm" action="supdate" method="post">
	<table border=1 width=600>
		<tr>
			<td>NAME.</td>
			<td><input type="text" name="name" value="${vo.name}"></td>
		</tr>
		<tr>
			<td>COMPANY.</td>
			<td><input type="text" name="company" value="${vo.company}"></td>
		</tr>
		<tr>
			<td>ADDRESS.</td>
			<td><input type="text" name="address" value="${vo.address}"></td>
		</tr>
		<tr>
			<td>YEAR.</td>
			<td><input type="text" name="year" value="${vo.year}"></td>
		</tr>
	</table>
		<input type="submit" value="저장">
		<input type="reset" value="취소">
		<input type="button" value="목록" onClick="location.href='slist'">
		<input type="button" value="삭제" onClick="funDelete()">
	</form>
</body>
	<script>
		function funDelete() {
			if(confirm("삭제하시겠습니까?")){
				frm.action="sdelete"
				frm.method="post";
				frm.submit();
			}
		}
	</script>
</html>