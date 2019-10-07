<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%> 
<html> 
<head> 
<title>Upload</title> 
</head> 
  
<body> 
<center><h2>Upload de Arquivos</h2> </center>
<s:actionerror /> 
<s:form action="userImage" method="post" enctype="multipart/form-data">
    <s:file name="userImage" label="User Image" /> 
    <s:submit value="Upload" align="center" /> 
</s:form> 
</body> 
