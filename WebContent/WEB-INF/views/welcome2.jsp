<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>

<style>

body {
	background-color: #140b00;
}

#header {
	top: 0px;
	left: 0px;
	position: fixed;
	color: #ffe375;
	background-color: #140b00;
	background-image: url("https://coffeeinmyveins.com/wp-content/uploads/2017/07/coffee-beans.jpg");
	background-repeat: no-repeat;
	background-position: center;
	height: 150px;
	width: 100%;
	z-index: 1;
	text-align: center;
	display: block;
}

#content {
	width: 100%;
	overflow-x: hidden;
	clear: both;
	border: 1px solid;
	margin-top: 155px;
	text-align: center;
	background-color: #fff5aa;
}



</style>

<title>Success</title>



</head>
<body>

<div id="container">
		<div id="header" style="font-size: 20pt">
			GC Coffee <br> serving Java for Java<br>
		</div>
	</div>

<div id="content">

	<h2>Available Items</h2>
	<br>
	<table border="1">
		<c:forEach items="${message}" var="list">
			<tr>
				<td><c:out value="${list}"></c:out></td>
			</tr>

		</c:forEach>

	</table>


</div>

</body>
</html>