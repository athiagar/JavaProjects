<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classPackage.MyStoreDPOImpl" %>
<%@ page import="classPackage.SQLTable" %>
<%@ page import="java.util.ArrayList;" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
	
	<title>Inventory</title></head>
	<% 
	String username = (String)session.getAttribute("sessionuser");
	out.println("Welcome "+ MyStoreDPOImpl.name);
	MyStoreDPOImpl sqltable = new MyStoreDPOImpl();
	ArrayList<SQLTable> printtable = sqltable.setArray();
	%>
	<body>
	<br>
	<br>
	<form action = "Cart.jsp">
	<table border="1">
	<tr align="center">
	<th>Item Name</th>
	<th>Item Description</th>
	<th>Item Price</th>
	<th>Add to cart</th>
	</tr>
	<% 
	 			//String[] checkedValues = request.getParameterValues("selItems");
				//cartClass cc = new cartClass();
                Integer finish = printtable.size();
                Integer i = 0;
                for (i=0; i < finish; i++){
                        out.println("<tr align=center>");
                        out.println("<td>"+printtable.get(i).itemN+"</td>");
                        out.println("<td>"+printtable.get(i).itemD+"</td>");
                        out.println("<td>"+printtable.get(i).itemP+"</td>");
                        out.println("<td><input type=checkbox name=selItems value=\""+printtable.get(i).itemN+","+printtable.get(i).itemP+"\"</td>");
                        //cc.setItemName(request.getParameter("selItems"));
                        out.println("</tr>");
                }
       %>
      </table>
      <br>
	  <br>
	  <br>
	  <br>
	  <input type = "Submit" value = "Add to Cart">
	  </form> 
	</body>
</html>