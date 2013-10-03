<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="classPackage.MyStoreDPOImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head><title>Login To Access Cart</title></head>

	<body>
				<%
				String createUserName = request.getParameter("createUserName");
				String createPassword = request.getParameter("createPassword");
				String createName = request.getParameter("createName");
				
				MyStoreDPOImpl newuser = new MyStoreDPOImpl();
				newuser.createUser(createUserName, createPassword, createName);
				%>
	<h4>Congratulations, you are now registered. Let's see if you remember your credentials.</h4>
	<h1>WELCOME TO MY CART!!!</h1>
		<form action="loginCheck.jsp" method="post">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>User Name: </td>
					<td><input type="text" size="20" name="txtUserName" />
				</tr>
				<tr>
					<td>Password: </td>
					<td><input type="password" size="20" name="txtPassword" />
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Submit" name="B1" /></td>
					<td><input type="Reset" value="Reset" name="B2" /></td>
				</tr>
			</table>	
		</form>
	</body>
</html>