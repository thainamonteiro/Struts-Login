<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%> 
<html> 
<head> 
    <title>Welcome</title> 
    <sx:head /> 
</head> 
<body> 
    <center><h2>Autocomplete (Drop down)</h2> 
      
  	Paises: 
    <sx:autocompleter size="1" list="countries" name="country"></sx:autocompleter></center>
    </action> 
</body> 
</html> 