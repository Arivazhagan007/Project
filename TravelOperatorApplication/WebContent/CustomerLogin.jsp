<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Login</title>
<link href="image/Login.jpg" type="image/jpg" rel="icon">
<link type="text/css" rel="stylesheet" href="style/style.css">
</head>
<body class="loginBg">

<form action="CustomerLogin.in" method="post">
<jsp:include page="Login.jsp"/>
<%-- <%@ include file= "Login.html"%> --%>
<div class="centerText1">
			<input type="reset" value="Reset" class="buttonSize"/>
			<input type="submit" value="Login" class="buttonSize"/>
</div>
</form>
</body>
</html>