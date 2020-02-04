<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Employees List</h1>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Employee ID</th>
		<th>Phone Number</th>
		<th>Password</th>
		
	</tr>
	<c:forEach var="reg" items="${list}">
		<tr>
			<td>${reg.fname}</td>
			<td>${reg.mname}</td>
			<td>${reg.lname}</td>
			<td>${reg.email}</td>
			<td>${reg.empid}</td>
			<td>${reg.phone}</td>
			<td>${reg.password}</td>
			
		</tr>
	</c:forEach>
</table>
<br />
<a href="registration">Add New Employee</a>