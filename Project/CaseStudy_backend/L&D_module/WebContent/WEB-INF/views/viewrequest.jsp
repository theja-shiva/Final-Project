<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Request List</h1>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>Id</th>
		<th>EmpName</th>
		<th>Designation</th>
		<th>Email</th>
		<th>Request</th>
		
	</tr>
	<c:forEach var="req" items="${list}">
		<tr>
			<td>${req.id}</td>
			<td>${req.empName}</td>
			<td>${req.designation}</td>
			<td>${req.email}</td>
			<td>${req.request}</td>
			
		</tr>
	</c:forEach>
</table>
<br />


