<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>Update Trainer Details</h1>
<form:form method="post" action="/CaseStudy2/editsave" >
	<table>
	    <tr>
	      <td></td>
	      <td><form:hidden path="tid"/></td>
	    
	    </tr>
	    <tr>
			<td>Room No :</td>
			<td><form:input path="roomno" /></td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><form:input path="TrName" /></td>
		</tr>
		<tr>
			<td>Platform :</td>
			<td><form:input path="platform" /></td>
		</tr>
		<tr>
			<td>Status :</td>
			<td><form:input path="status" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Edit save" /></td>
		</tr>
		</table>
		</form:form>
		
		

