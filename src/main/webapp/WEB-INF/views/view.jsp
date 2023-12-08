<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.board.BoardDAO, com.crud.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Page</title>
</head>
<body>

<h1>View Page</h1>
<p>Category: ${boardVO.category}</p>
<p>Title: ${boardVO.title}</p>
<p>Writer: ${boardVO.writer}</p>
<p>Content: ${boardVO.content}</p>
<a href ="../list">Back</a>
</body>
</html>
