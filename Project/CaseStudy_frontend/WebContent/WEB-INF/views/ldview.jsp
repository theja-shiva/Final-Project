<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
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
						<li class="active"><a href="log"> Login </a></li>
						<li><a href="ab"> About </a></li>
						<li><a href="con"> Contact Us </a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	
<marquee><h1 style="color:purple">L & D - Trainer Details</h1></marquee>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>Employee Id</th>
		<th>Full Name</th>
		<th>Slot</th>
		<th>Room Number</th>
		<th>Availibility Status</th>
		
	</tr>
	<c:forEach var="l" items="${list}">
		<tr>
			<td>${l.empid}</td>
			<td>${l.fullname}</td>
			<td>${l.slot}</td>
			<td>${l.room_no}</td>
			<td>${l.a_status}</td>
			
		</tr>
	</c:forEach>
</table>
<br />
</body>
</html>


