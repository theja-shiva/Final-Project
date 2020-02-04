<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	<h1 style="text-align: center">Login</h1><br>
	<div class="container-fluid">
		<div class="jumbotron" style="">
			<div>
				<form class="form-horizontal">
					<div class="form-group">
						<label class="control-label col-sm-4">Email ID:</label>
						<div class="col-sm-4">
							<input type="email" class="form-control" name="frame"
								placeholder="Enter your email ID">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Password:</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="pwd"
								placeholder="Enter password">
							<div class="col-md-10">
								<div class="form-group">
									<div class="control-label col-sm-10"><br>
										<input type="submit" class="btn btn-primary" value="submit">
									</div>
								</div>
							</div>
						</div>
					</div>
					<h5 style="text-align:center">New User?<a href="registration.html">Register </a>here.</h5>
				</form>
			</div>
		</div>
	</div>
	<footer align="center" style="font-size:15px">
		<p><b>Copyright@2019</b></p>
	</footer>
	
</body>
</html>