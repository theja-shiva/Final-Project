<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<h1>Add New Request</h1>
<form:form method="post" action="save">
	<table>
		<tr>
			<td>EmpName :</td>
			<td><form:input path="empName" /></td>
		</tr>
		<tr>
			<td>Designation :</td>
			<td><form:input path="designation" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Request :</td>
			<td><form:input path="request" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Save" /></td>
		</tr>
	</table>
</form:form>
<a href="viewrequest">View Requests</a>
