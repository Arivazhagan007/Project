<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navigation</title>
<link type="text/css" rel="stylesheet" href="style/style.css">
</head>
<body>
<div class="rightDiv navTextColor">
	<ul class="ulList">
		<li class="ulliList border backgroundColor showList"><a>Login</a>
			<ul class="ulList">
				<li class="ulliList hideList backgroundColor"><a href="CustomerLogin.jsp">User Login</a></li>
				<li class="ulliList hideList backgroundColor"><a href="EmployeeLogin.jsp">Employee Login</a></li>
			</ul>
		</li>
		<li class="ulliList border backgroundColor showList"><a>Register</a>
			<ul class="ulList ">
				<li class="ulliList hideList backgroundColor"><a href="CustomerRegister.jsp">User Register</a></li>
				<li class="ulliList hideList backgroundColor"><a href="EmployeeRegister.jsp">Employee Register</a></li>
			</ul>
		</li>
	</ul>
</div>
</body>
</html>