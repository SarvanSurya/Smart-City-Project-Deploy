<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style>
table {
	width: auto;
	border-collapse: collapse;
	margin: 20px 0;
	color: black; /* Set text color to black */
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 15px;
	text-align: left;
}

th {
	background-color: #333;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

#myTable {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	font-size: 18px;
}

#myTable img {
	width: 100px;
	height: 100px;
}

#myTable td:nth-child(4), #myTable td:nth-child(5) {
	padding: 5px;
}
</style>
</head>
<body>

	<%@ include file="adminnavbar.jsp"%>
	<header>
		<h1>Rental Bookings</h1>
	</header>
	<div class="container">

		<table align=center border=2>
			<tr bgcolor="black" style="color: white">
				<td>NAME</td>
				<td>CONTACT</td>
				<td>EMAIL</td>
				<td>ADDRESS</td>
				<td>VEHICLE</td>
				<td>DATE</td>
				<td>TIME</td>
			</tr>

			<c:forEach items="${rblist}" var="r">
				<tr>
					<td><c:out value="${r.name}" /></td>
					<td><c:out value="${r.number}" /></td>
					<td><c:out value="${r.email}" /></td>
					<td><c:out value="${r.address}" /></td>
					<td><c:out value="${r.vehicle}" /></td>
					<td><c:out value="${r.date}" /></td>
					<td><c:out value="${r.time}" /></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>
