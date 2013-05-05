<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<s:include value="/WEB-INF/jsp/commons/meta.jsp"/>
<title>Enter Employee ID</title>
</head>
<body>
	<h3>Enter the employee ID of the person you want to find.</h3>

	<s:form action="personFinder">

		<s:textfield name="emplid" label="Employee ID" />

		<s:submit />

	</s:form>

	<p>
		<a href="<s:url action='allPersonsFinder'/>">Find all employees</a>.
	</p>

	<h3>Create new employee.</h3>

	<p>
		<a href="<s:url action='inputPersonSave'/>">Create new employee</a>.
	</p>


</body>
</html>