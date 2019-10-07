<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%> 
<html> 
<head> 
<title>Formulário de cliente</title> 
</head> 
  
<body> 
<center> <h2>Formulário de Cliente</h2>  </center>
  
<s:form action="customer.action" method="post" validate="true"> 
    <s:textfield name="nome" key="nome" size="20" /> 
    <s:textfield name="id" key="id" size="20" /> 
    <s:textfield name="email" key="email" size="20" /> 
    <s:textfield name="telefone" key="telefone" size="20" /> 
    <s:submit method="addCustomer" key="label.add.customer" align="center" />
</s:form> 
</body> 
</html>