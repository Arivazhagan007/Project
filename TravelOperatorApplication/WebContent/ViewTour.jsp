<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Tour List</title>
<link type="text/css" rel="stylesheet" href="style/ViewTour.css">
</head>
<body>
<table>
<tr>
	<th>Tour Id</th>
	<th>Tour Code</th>
	<th>Tour Name</th>
	<th>Boarding Place</th>
	<th>Destination Place</th>
	<th>Starting Date</th>
	<th>Ending Date</th>
	<th>Places Covered</th>
	<th>Amount Per Person</th>
	<th>" "</th>
</tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="root";

String query="select * from Tour";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>

<tr><td><%=rs.getInt("tourId") %></td>
    <td><%=rs.getString("tourCode") %></td>
    <td><%=rs.getString("tourName") %></td>
    <td><%=rs.getString("boardingPlace") %></td>
    <td><%=rs.getString("destinationPlace") %></td>
    <td><%=rs.getString("startingDate") %></td>
    <td><%=rs.getString("endingDate") %></td>
    <td><%=rs.getString("placesCovered") %></td>
    <td><%=rs.getString("amountPerPerson") %></td>
    <td></td>
    </tr>

<%
}
%>
</table>
<%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }


%>
</body>
</html>