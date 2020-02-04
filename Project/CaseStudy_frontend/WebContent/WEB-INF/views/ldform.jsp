<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body><div class="wrapper">
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
				<form class="form-horizontal" form method="post" action="save2">
					<div class="form-group">
						<label class="control-label col-sm-4">Employee Id:</label>
						<div class="col-sm-4">
							<input type="num" class="form-control" name="emid"
								placeholder="Enter your id">
						</div>
					</div>
					
					
					
				
					<div class="form-group">
						<label class="control-label col-sm-4">Full name:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="name"
								placeholder="Enter your name">
							
						</div>
						</div>
						<br>
						<div class="form-group">
						<label class="control-label col-sm-4">Slot:</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" name="slot"
								placeholder="Enter slot">
							
						</div>
						</div>
						<div class="form-group">
						<label class="control-label col-sm-4">Room no:</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" name="room_no"
								placeholder="Enter room number">
							
						</div>
					
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">Available Status:</label>
						<div class="col-sm-4">
							<input type="string" class="form-control" name="a_status"
								placeholder="Enter status">
							
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
	<a href="ldv">View slot</a>
	</body>
	</html>
	