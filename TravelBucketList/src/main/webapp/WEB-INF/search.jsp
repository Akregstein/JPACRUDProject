<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<a href="home.do" id="id">BucketList Homepage</a>


<h3>Search By Id</h3>

<form action="findById.do" method="GET">

<h1>Search Film By Id</h1>

ID: <input type="text" name="id" />
	<input type="submit" value="submit" />

</form>


</body>
</html>