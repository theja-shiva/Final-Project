<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<div class="container-fluid">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="home"> TRM </a>
					</div>

					<ul class="nav navbar-nav">
						<li class="active"><a href="registration.jsp">
								Registration </a></li>
						<li><a href="ab"> About </a></li>
						<li><a href="con"> Contact Us </a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<h1 style="text-align: center">Registration</h1>
	<br>
	<div class="container-fluid">
		<div class="jumbotron" style="">
			<div>
				<form class="form-horizontal" form method="post" action="save1">
					<div class="form-group">
						<label class="control-label col-sm-4">First Name:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="frame"
								placeholder="Enter your first name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Middle Name:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="frame"
								placeholder="Enter your middle name">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Last Name:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="frame"
								placeholder="Enter your last name">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Employee ID:</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" name="frame"
								placeholder="Enter your emp id">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Phone Number:</label>
						<div class="col-sm-4">
							<input type="tel" class="form-control" name="frame"
								placeholder="Enter your phone number">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Password:</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="pwd"
								placeholder="Enter your password">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Confirm Password:</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="pwd"
								placeholder="Confirm Password">
							
						</div>
					</div>
					
					<div class="col-md-10">
								<div class="form-group">
									<div class="control-label col-sm-10"><br>
								
										<input type="submit" value="Register" />
										
									</div>
								</div>
							</div>
					<h5 style="text-align:center">Already Registered!<a href="log">Login </a>here.</h5>
				</form>
			</div>
		</div>
	</div>
	<!--<form:form method="post" action="save1">
	<table>
		<tr>
			<td>First Name :</td>
			<td><form:input path="fname" /></td>
		</tr>
		<tr>
			<td>Middle Name :</td>
			<td><form:input path="mname" /></td>
		</tr>
		<tr>
			<td>Last Name :</td>
			<td><form:input path="lname" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Employee Id :</td>
			<td><form:input path="empid" /></td>
		</tr>
		<tr>
			<td>Phone Number :</td>
			<td><form:input path="phone" /></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><form:input path="password" /></td>
		</tr>
		<tr>
			<td> Confirm Password :</td>
			<td><form:input path="cpassword" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Save" /></td>
		</tr>
	</table>
</form:form>-->
<a href="viewreg">Registration</a>
<footer align="center" style="font-size:15px">
		<p><b>Copyright@2019</b></p>
	</footer>
	
</body>
</html>