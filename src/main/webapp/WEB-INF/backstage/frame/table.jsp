<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tile" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<tile:insertAttribute name="meta"/>
<tile:insertAttribute name="source"/>
</head>
<body> 
    <tile:insertAttribute name="head"/>
	<tile:insertAttribute name="menu"/>
    <div class="wrap-fluid">
	    	<form id="contentForm" method="post">
	    	 	<tile:insertAttribute name="content"/>
	    	</form>
    </div>
    <tile:insertAttribute name="foot"/>
</body>

</html>
