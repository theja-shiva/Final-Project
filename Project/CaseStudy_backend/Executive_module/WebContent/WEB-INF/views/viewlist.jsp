<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Trainer List</h1>
<table border="1" width="100%">
	<tr>
		<th>T_id</th>
		<th>Room number</th>
		<th>Name</th>
		<th>Platform</th>
		<th>Status</th>
	</tr>
	<c:forEach var="req" items="${list}">
		<tr>
			<td>${req.tid}</td>
			<td>${req.roomno}</td>
			<td>${req.trName}</td>
			<td>${req.platform}</td>
			<td>${req.status}</td>
			
		</tr>
	</c:forEach>
</table>
<br />


