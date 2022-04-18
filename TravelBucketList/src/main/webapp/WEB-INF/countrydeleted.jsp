<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete a Country</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<a href="home.do" id="id">BucketList Homepage</a>
	<c:choose>
		<c:when test="${delete == true}">
			<h3>Country was Deleted</h3>



		</c:when>
		<c:otherwise>
			<p>No country deleted</p>
			<br>
			<p>Please try again</p>
		</c:otherwise>
	</c:choose>

</body>
</html>