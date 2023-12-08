<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.board.BoardDAO, com.crud.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute ="boardVO" action="../editok" method="POST">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Category:</td><td><form:input path="category"/></td></tr>
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
		<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()"
</form:form>

</body>
</html>