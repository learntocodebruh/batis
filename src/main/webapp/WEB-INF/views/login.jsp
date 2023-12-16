<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      padding-top:40px;
      padding-bottom: 40px;
      background-color: #f5f5f5;
      text-align: center;
    }
    .auth-form {
      margin: auto;
      width: 30%;
      border: 3px solid #007bff;
      padding: 20px;
      border-radius: 15px;
      background-color: white;
    }

    .auth-form h2 {
      margin-bottom: 30px;
    }

    .form-group {
      margin-bottom: 15px;
    }
    .form-control {
      font-size: 15px;
      height: auto;
    }
    .form-control:focus {
      z-index: 2;
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
  <div class="auth-form">
    <h2>Login</h2>
    <form method="post" action="loginOk">
      <div class="form-group">
        <label>ID:</label>
        <input type="text" name="userid" class="form-control" />
      </div>
      <div class="form-group">
        <label>PW:</label>
        <input type="password" name="password" class="form-control" />
      </div>
      <button type="submit" class="form-button">Login</button>
      <button type="button" class="form-button" onclick="location.href = 'join'">Join</button>
    </form>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
