<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id ="edit">
    <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Singer:</td><td><input type="text" name="singer"/></td></tr>
    <tr><td>Year:</td><td><input type="number" name="year" min="1800" max="2030" step="1"/></td></tr>
    <tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
    <tr><td>Producer:</td><td><input type="text" name="producer"/></td></tr>
    <tr><td>Nationality:</td><td><input type="text" name="nationality"/></td></tr>
    <tr><td>Link:</td><td><input type="text" name="link"/></td></tr>
    <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
    <button type="button" onclick="location.href='list'">View All Records</button>
    <button type="submit">Add Post</button>
</form>

</body>
</html>