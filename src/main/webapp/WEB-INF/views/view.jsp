<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.board.BoardDAO, com.crud.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>자세히 보기</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      padding-top: 40px;
      padding-bottom: 40px;
      background-color: #f5f5f5;
      text-align: center;
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    }
    .details {
      margin: auto;
      width: 50%;
      border: 3px solid #007bff;
      padding: 20px;
      border-radius: 15px;
      background-color: white;
      text-align: center;
    }
    .details p {
      font-size: 16px;
      line-height: 1.6;
    }
    .details a {
      display: inline-block;
      margin-top: 20px;
      font-size: 20px;
      text-decoration: none;
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    .details a:hover, .details a:active {
      background-color: #0056b3;
      color: white;
      text-decoration: none;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="details">
    <h1>자세히 보기</h1>
    <p>Title: ${boardVO.title}</p>
    <p>Singer: ${boardVO.singer}</p>
    <p>Year: ${boardVO.year}</p>
    <p>Category: ${boardVO.category}</p>
    <p>Producer: ${boardVO.producer}</p>
    <p>Nationality: ${boardVO.nationality}</p>
    <p>Link: ${boardVO.link}</p>
    <p>Content: ${boardVO.content}</p>

    <a href ="../list">Back</a>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
