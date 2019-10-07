<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ taglib prefix = "s" uri = "/struts-tags"%>
<html> 
<head> 
<title>Welcome</title> 
</head> 
  
<body> 
	<s:a href="Customer.jsp">Add Customer</s:a>
    <h2>Howdy, <s:property value="username" />...!</h2>
</body> 
</html>