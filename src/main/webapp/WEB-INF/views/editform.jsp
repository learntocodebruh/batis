<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>수정하기</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<style>
		body {
			padding-top: 40px;
			padding-bottom: 40px;
			background-color: #f5f5f5;
			text-align: center;
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		}
		.edit-form {
			margin: auto;
			width: 50%;
			border: 3px solid #007bff;
			padding: 20px;
			border-radius: 15px;
			background-color: white;
		}
		.form-group {
			margin-bottom: 15px;
		}
		.form-control {
			font-size: 16px;
			height: auto;
		}
		.form-button {
			background-color: #007bff;
			color: white;
			padding: 10px 20px;
			border-radius: 5px;
			transition: background-color 0.3s ease;
			font-size: 15px;
			border: none;
		}
		.form-button:hover, .form-button:active {
			background-color: #0056b3;
			color: white;
			text-decoration: none;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="edit-form">
		<h1>수정하기</h1>
		<form:form modelAttribute="boardVO" action="../editok" method="POST" class="form-horizontal">
			<form:hidden path="seq"/>
			<div class="form-group">
				<label>Title:</label>
				<form:input path="title" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Singer:</label>
				<form:input path="singer" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Year:</label>
				<form:input path="year" min="1800" max="2030" step="1" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Category:</label>
				<form:input path="category" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Producer:</label>
				<form:input path="producer" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Nationality:</label>
				<form:input path="nationality" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Link:</label>
				<form:input path="link" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Content:</label>
				<form:textarea path="content" cols="50" rows="5" class="form-control"></form:textarea>
			</div>
			<input type="submit" value="Edit" class="form-button"/>
			<input type="button" value="Cancel" onclick="history.back()" class="form-button"/>
		</form:form>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
