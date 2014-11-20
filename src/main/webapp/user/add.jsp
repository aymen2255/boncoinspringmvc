<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="save.do" method="POST" commandName="user">



		<table>
			<tr>
				
				<td>nom</td>
				<td>prenom</td>
				<td>login</td>
				<td>password</td>
				<td>confirmation password</td>
			</tr>
			<tr>
				
				<td><form:input path="nom" /></td>
				<td><form:input path="prenom" /></td>
				<td><form:input path="login" /></td>
				<td><form:input path="password" /></td>
			</tr>
		</table>
		<input type="submit" value="valider">
	</form:form>
</body>
</html>