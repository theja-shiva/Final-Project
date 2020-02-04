<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>Update Request Details</h1>
<form:form method="post" action="/CaseStudy2/editsave" >
	<table>
	    <tr>
	      <td></td>
	      <td><form:hidden path="id"/></td>
	    
	    </tr>
	    <tr>
			<td>ReqName :</td>
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
			<td><input type="submit" value="Edit save" /></td>
		</tr>
		</table>
		</form:form>
		
		<a href="viewrequest">View Request</a>

