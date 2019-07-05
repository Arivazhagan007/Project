<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link type="text/css" rel="stylesheet" href="style/style.css">
</head>
<body class="loginBg">

<fieldset class="registerFieldSet">
	<h1 class="registerCenterText">Register Form</h1>
	<div >
		<img alt="login" src="image/loginLogo.jpg" class="logoImage1">
	</div>
	<div class="registerPadding">
		<label for="name" class="txtColorWhite">Name</label>
		<input type="text" name="name" id="name" required="required" placeholder="Enter the Name" class="fullSize"/>
	</div>
	<div class="registerPadding">
		<label for="phoneNumber" class="txtColorWhite">Phone Number</label>
		<input type="text" name="phoneNumber" id="phoneNumber" required="required" placeholder="Enter the Phone Number" class="fullSize"/>
	</div>
	<div class="registerPadding">
		<label for="userName" class="txtColorWhite">User Name</label>
		<input type="text" name="userName" id="userName" required="required" placeholder="Enter the UserName" class="fullSize"/>
	</div>
	<div class="registerPadding paddingBottom">
		<label for="passWord" class="txtColorWhite">Password</label>
		<input type="password" name="passWord" id="passWord" required="required" placeholder="Enter the Password" class="fullSize"/>
	</div>
	<!-- <div class="registerPadding centerText">
		<input type="reset" value="Reset" class="buttonSize"/>
		<input type="submit" value="Submit" class="buttonSize"/>
	</div> -->
</fieldset>

</body>
</html>