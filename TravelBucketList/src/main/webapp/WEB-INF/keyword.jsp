<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Keyword</title>
</head>
<body>

<h3>Search By Keyword</h3>

<form action="search.do" method="POST">

<c:choose>
	
	<c:when test="${! empty film}">
		<ul>
			<c:forEach var="c" items="${country}">
					<li><p><a href="findByID.do?id=${c.id}" class ="keyword">ID: ${c.id} Title: ${c.title} </a></p></li>
			</c:forEach>
		</ul>
	
	</c:when>
	
	<c:otherwise>
	
		<h2>No Country found matching your search.</h2>
	
	</c:otherwise>
	
	</c:choose>
</body>
</html>