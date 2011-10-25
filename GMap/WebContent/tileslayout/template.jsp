<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style/style.css" />
<title>GMap</title>
<script type="text/javascript" src="scripts/tvshop.js">	</script>
</head>
<body style="margin:0">
	<table width="900px" border="0" cellpadding="5" cellspacing="0" >
		<tiles:insertAttribute name="menuheader" />
  		<tr>    	
        	<td><tiles:insertAttribute name="maincontent" /></td>
		</tr>    
        <tiles:insertAttribute name="footer" />
	</table> 
</body>
</html>