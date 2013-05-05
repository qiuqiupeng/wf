<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<s:include value="/WEB-INF/jsp/commons/meta.jsp"/>
<title>Save Person</title>
</head>
<body>
	<h3>Use the form below to create a new employee.</h3>


	<s:form action="executePersonSave" method="post">

		<s:textfield name="person.first_name" label="First name" />
		<s:textfield name="person.last_name" label="Last name" />



		<s:submit />

	</s:form>



	<p>
		<a href="index">Find another employee</a>
	</p>
	<p>
		<a href="<s:url action='allPersonsFinder'/>">Find all employees</a>.
	</p>


</body>
</html>