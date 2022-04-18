<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Keyword Display</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<a href="home.do" id="id">BucketList Homepage</a>

<h1>Keyword Display</h1>
<c:choose>
	
	<c:when test="${! empty country}">
		<ul>
			<c:forEach var="c" items="${country}">
					<li><p><a href="findById.do?id=${c.id}" class ="keyword">ID: ${c.id} Name: ${c.name} </a></p></li>
			</c:forEach>
		</ul>
	
	</c:when>
	
	<c:otherwise>
	
		<h2>No Country found matching your search.</h2>
	
	</c:otherwise>
	
	</c:choose>

</body>
</html>