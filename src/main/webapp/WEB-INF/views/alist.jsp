<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<style>
			.row-hover:hover{
				background:gray; color:white;
			}
			h1{text-align:center;}
		</style>
</head>
<body>
	<h1>[주소록]</h1>
	<table class="table table-borderd">
		<tr>
			<th>NO.</th>
			<th>NAME.</th>
			<th>TEL.</th>
			<th>ADDRESS.</th>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr class="row-hover" onClick="location.href='aread?id=${vo.id}'">
				<td>${vo.id}</td>
				<td>${vo.name}</td>
				<td>${vo.tel}</td>
				<td>${vo.address}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="입력" onClick="location.href='ainsert'">
</body>
</html>