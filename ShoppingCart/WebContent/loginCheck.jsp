<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="classPackage.MyStoreBizImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lemme check if you're legit</title>
</head>
<body>

	<%
	
	String userName = request.getParameter("txtUserName");
	String password = request.getParameter("txtPassword");
	
	MyStoreBizImpl authObj = new MyStoreBizImpl();
	boolean check = authObj.authenticate(userName,password);
	
	if(check){
		response.sendRedirect("inventory.jsp");
		
	}
	else{
		String message = "no user or password found";
		response.sendRedirect("error.jsp?error=" + message);
	}
	
	%>

</body>
</html>