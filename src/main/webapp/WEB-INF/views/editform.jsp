<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Singer:</td><td><form:input path="singer"/></td></tr>
		<tr><td>Year:</td><td><form:input path="year" min="1800" max="2030" step="1"/></td></tr>
		<tr><td>Category:</td><td><form:input path="category"/></td></tr>
		<tr><td>Producer:</td><td><form:input path="producer"/></td></tr>
		<tr><td>Nationality:</td><td><form:input path="nationality"/></td></tr>
		<tr><td>Link:</td><td><form:input path="link"/></td></tr>
		<tr><td>Content:</td><td><form:textarea path="content" cols="50" rows="5"/></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()"
</form:form>

</body>
</html>