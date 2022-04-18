<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Countries!!!</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<a href="home.do" id="id">BucketList Homepage</a>

<h1>Welcome to Wandering Dans Travel Bucket List</h1>

<ul>
<li><a href="home.do">Home</a></li>
<li><a href="list.do">List all Countries</a></li>
<li><a href="searchByKeyword.do">Search by Keyword</a></li>
<li><a href="search.do">Search by Id</a></li>
<li><a href="add.do">Add</a></li>
<li><a href="delete.do">Delete</a></li>


</ul>



${Country}
</body>
</html>