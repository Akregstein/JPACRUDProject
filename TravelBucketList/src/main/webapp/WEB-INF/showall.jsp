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
<ul>
<c:forEach items="${countrylist }" var= "country" >
<li> <a href="findById.do?id=${country.id}">${country.name}</a> </li>


</c:forEach>




</ul>

</body>
</html>