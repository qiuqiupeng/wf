<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<s:include value="/WEB-INF/jsp/commons/meta.jsp"/>
<title>Edit Person</title>
</head>
<body>
	<h3>Use the form below to edit this employee.</h3>

	<s:if test="person != null">

		<s:form action="executePersonUpdate" method="post">

			<s:textfield name="person.first_name" label="First name" />
			<s:textfield name="person.last_name" label="Last name" />

			<s:hidden name="person.emplid" />

			<s:submit />

		</s:form>


	</s:if>

	<s:else>

		<p>No person was found.</p>
	</s:else>

	<p>
		<a href="index">Find another employee</a>
	</p>
	<p>
		<a href="<s:url action='allPersonsFinder'/>">Find all employees</a>.
	</p>


</body>
</html>