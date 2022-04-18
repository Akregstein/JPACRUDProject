<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete a Country</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<a href="home.do" id="id">BucketList Homepage</a>
	<h3>Delete a Country</h3>

	<form action="deleteCountry.do" method="POST">
		<label for="countryId">Id:</label> <input type="number" name="countryId">
		<br> 
		<input type="submit" value="Delete Country">
	</form>
</body>
</html>