<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
<link href="ext.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<div class="wrapper">
		<div class="container-fluid"style="background-color: #98AFC7;">
			<nav class="navbar navbar-inverse"style="background-color:#34282C;">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="home"> TRM </a>
					</div>

					<ul class="nav navbar-nav">
						<li class="active"><a href="home"> Home </a></li>
						<li><a href="projm"> Project manager </a></li>
						<li><a href="ld"> Learning and Development </a></li>
						<li><a href="ex"> Executive </a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="registration"> <span
								class="glyphican glyphican-user"></span>SignUp
						</a></li>
						<li><a href="log"> <span
								class="glyphican glyphican-log-in"></span>Login
						</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<br>
<marquee><h1 style="color:purple">Employee Details</h1></marquee>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Country</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="emp" items="${list}">
		<tr>
			<td>${emp.id}</td>
			<td>${emp.name}</td>
			<td>${emp.password}</td>
			<td>${emp.country}</td>
			<td><a href="edit/${emp.id}">Edit</a></td>
			<td><a href="deleteemp/${emp.id}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br />
<a href="empform">Add New Employee</a>

