<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>Update Employee Details</h1>
<form:form method="post" action="/CaseStudy/editsave" >
	<table>
	    <tr>
	      <td></td>
	      <td><form:hidden path="id"/></td>
	    
	    </tr>
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
			<td><input type="submit" value="Edit save" /></td>
		</tr>
		</table>
		</form:form>
		
		<a href="viewemp">View Employee</a>

