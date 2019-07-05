<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Navigation</title>
<link type="text/css" rel="stylesheet" href="style/CustomerNavigation.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div>
<nav>
<a><button type="submit" class="fullSize2 border showList hoverColor">Logout</button></a>
</nav>
</div>
<div class="rightDiv navTextColor ulList marginRight">

	<input type="text" name="sourcePlace" id="sourcePlace" required="required" placeholder="Enter the Tour Starting place" class="fullSize border showList">
	<input type="text" name="destinationPlace" id="destinationPlace" required="required" placeholder="Enter the Tour Ending place" class="fullSize border showList">
	<a><button type="submit" class="fullSize1 border showList"><i class="fa fa-search"></i></button></a>
</div>

</body>
</html>