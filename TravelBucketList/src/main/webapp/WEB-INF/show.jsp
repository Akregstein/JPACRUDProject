<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country Details</title>
<%-- <jsp:include page="bootstrapHead.jsp" /> --%>
</head>
<body>

<div class="container-fluid">
	<h1>Country Details</h1>

	<div>
		<h5>${country.name}</h5>
		<p>${country.capital}</p>
		<br>
		<p>${country.population}</p>
		<br>
		<p>${country.greeting}</p>
		<br>
		<p>${country.mustTryDish}</p>
		<br>
		<p>${country.language}</p>
		<br>
		<p>${country.currency}</p>
		<br>
		<p>${country.highestElevation}</p>
		<br>
		<p>${country.population}</p>
	</div>
</div>

</body>
</html>