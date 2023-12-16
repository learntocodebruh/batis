<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.board.BoardDAO, com.crud.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<style>
		body {
			text-align: center;
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		}
		#list {
			margin: auto;
			border-collapse: collapse;
			width: 90%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			background-color: #006bb3;
			color: white;
		}
		.title-section {
			margin-bottom: 20px;
		}
		.title-section h1, .title-section h3 {
			margin: 0;
			padding: 5px;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/'+id;
		}
	</script>
</head>
<body>
<div class="title-section">
	<h1>${login.username} 님의 플레이리스트</h1>
	<h3><a href="../login/logout">로그아웃</a></h3>
</div>
<table id="list">
	<tr>
		<th>Title</th>
		<th>Singer</th>
		<th>Year</th>
		<th>Category</th>
		<th>Producer</th>
		<th>Nationality</th>
		<th>Link</th>
		<th>View</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.title}</td>
			<td>${u.singer}</td>
			<td>${u.year}</td>
			<td>${u.category}</td>
			<td>${u.producer}</td>
			<td>${u.nationality}</td>
			<td>${u.link}</td>
			<td><a href="view/${u.seq}">View</a></td>
			<td><a href="editform/${u.seq}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br/><a href="add">새로운 노래 추가</a>
</body>
</html>
