<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
<h1>Cart</h1>
<br>
<input type="button" value="Back to List" onclick ="history.back()">
<br>
<form action = "itemsPurchased.jsp">
	<table border="1">
	<tr align="center">
	<th>Selected Items</th>
	</tr>
<%

 String[] checkedValues = request.getParameterValues("selItems");
 for (int i = 0; i < checkedValues.length; i++) {
	 out.println("<tr align=center>");
	 out.println("<td>"+checkedValues[i]+"</td>");
	 out.println("</tr>");
} 

%>
</table>
<br>
<br>
<br>
<br>
<input type = "Submit" value = "Purchase" align="right">
</form> 
</body>
</html>