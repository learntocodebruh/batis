<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>새로운 노래 추가</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
            text-align: center;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        }
        .add-form {
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
            margin-top: 10px;
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
    <div class="add-form">
        <h1>새로운 노래 추가</h1>
        <form action="addok" method="post">
            <div class="form-group">
                <label>Title:</label>
                <input type="text" name="title" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Singer:</label>
                <input type="text" name="singer" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Year:</label>
                <input type="number" name="year" min="1800" max="2030" step="1" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Category:</label>
                <input type="text" name="category" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Producer:</label>
                <input type="text" name="producer" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Nationality:</label>
                <input type="text" name="nationality" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Link:</label>
                <input type="text" name="link" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Content:</label>
                <textarea cols="50" rows="5" name="content" class="form-control"></textarea>
            </div>
            <button type="button" class="form-button" onclick="location.href='list'">View All Records</button>
            <button type="submit" class="form-button">Add Post</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
