<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="joinok" method="post">
    <table id ="edit">
        <tr><td>ID:</td><td><input type="text" name="userid"/></td></tr>
        <tr><td>Name:</td><td><input type="text" name="username"/></td></tr>
        <tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
    </table>
    <button type="button" onclick="location.href='login'">Cancel</button>
    <button type="submit">Join</button>
</form>

</body>
</html>