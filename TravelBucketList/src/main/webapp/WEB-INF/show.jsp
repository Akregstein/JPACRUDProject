<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country Details</title>
<%-- <jsp:include page="bootstrapHead.jsp" /> --%>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<a href="home.do" id="id">BucketList Homepage</a>

<div class="container-fluid">
	<h1>Country Details</h1>

	<div>
		<h3>${country.name}</h3>
		<p>Capital City: ${country.capital}</p>
		<br>
		<p>Population: ${country.population}</p>
		<br>
		<p>Common greeting:${country.greeting}</p>
		<br>
		<p>Must try Dish:${country.mustTryDish}</p>
		<br>
		<p>Language: ${country.language}</p>
		<br>
		<p>Currency: ${country.currency}</p>
		<br>
		<p>Highest Elevation: ${country.highestElevation}</p>
		<br>
	
	</div>
</div>

</body>
</html>