<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Country</title>
</head>
<body>

	<h3>Add a Country</h3>

	<form action="addCountry.do" method="POST">
		<label for="name">Name:</label> <input type="text" name="name">
		<br> 
		<label for="capital">Capital:</label> <input type="text"name="capital">
			 <br> 
			<label for="population">Population:</label>
		<input type="text" name="population">
		 <br>
		 <label
			for="greeting">Greeting:</label> <input type="text"
			name="greeting">
			 <br> 
			 <label for="mustTryDish">MustTryDish:</label>
		<input type="text" name="mustTryDish">
		 <br> 
		 <label
			for="language">Language:</label> <input type="text" name="language">
		<br> 
		<label for="currency">Currency:</label> <input type="text" name="currency"> 
			<br> 
			
			<label for="highestElevation">HighestElevation:</label> <input type="text"
			name="highestElevation"> 
			<br>
			<input type="submit" value="Add Country">
	</form>
</body>
</html>