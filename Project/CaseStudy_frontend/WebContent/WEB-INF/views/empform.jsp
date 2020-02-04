<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<br>
	<div class="container-fluid">
		<div class="jumbotron" style="">
			<div>
				<form class="form-horizontal" form method="post" action="save">
					<div class="form-group">
						<label class="control-label col-sm-4">Name:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="name"
								placeholder="Enter your name">
						</div>
					</div>
					
					
					
				
					<div class="form-group">
						<label class="control-label col-sm-4">Password:</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="password"
								placeholder="Enter your password">
							
						</div>
						</div>
						<br>
						<div class="form-group">
						<label class="control-label col-sm-4">Email:</label>
						<div class="col-sm-4">
							<input type="email" class="form-control" name="email"
								placeholder="Enter your email id">
							
						</div>
						</div>
						<div class="form-group">
						<label class="control-label col-sm-4">Country:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="country"
								placeholder="Enter country name">
							
						</div>
					
					</div>
					
					<div class="col-md-10">
								<div class="form-group">
									<div class="control-label col-sm-10"><br>
								
										<input type="submit" value="Register"  />
										
									</div>
								</div>
							</div>
				
				</form>
			</div>
		</div>
	</div>

<!--<h1>Add New Employee</h1>

<form:form method="post" action="save">
	<table>
		<tr>
			<td>Name :</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><form:input path="password" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Country :</td>
			<td><form:input path="country" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Save" /></td>
		</tr>
	</table>
</form:form>-->
<a href="viewemp">View Employee</a>
