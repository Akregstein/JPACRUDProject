<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Keyword</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>

<h1>
		<a href="home.do" id="id">BucketList Homepage</a>
	</h1>
	
<h3>Search By Keyword</h3>
<form action="findByKeyword.do" method="GET">

<h1>Search Country By Keyword</h1>

Keyword: <input type="text" name="keyword" />
	<input type="submit" value="submit" />

</form>





</body>
</html>