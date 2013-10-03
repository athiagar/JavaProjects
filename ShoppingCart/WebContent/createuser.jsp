<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Registration Page</title></head>

	<body>
	<h1>Hello new guy!</h1>
		<form action="createdUserLogin.jsp" method="post">
			<table border="0" cellspacing="0" cellpadding="0">
			<tr>
					<td>Full Name: </td>
					<td><input type="text" size="20" name="createName" />
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td>User Name: </td>
					<td><input type="text" size="20" name="createUserName" />
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td>Password: </td>
					<td><input type="password" size="20" name="createPassword" />
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Submit" name="B1" /></td>
				</tr>
			</table>
		</form>
		</body>
</html>