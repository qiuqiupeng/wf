<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person Saved</title>
</head>
<body>
	<h3>Below are the details of the employee created.</h3>

	<s:if test="person != null">



		<p>
			<s:property value="person" />
		</p>



	</s:if>

	<s:else>

		<p>No person was saved.</p>
	</s:else>

	<p>
		<a href="index.jsp">Find employee</a>
	</p>
	<p>
		<a href="<s:url action='allPersonsFinder'/>">Find all employees</a>.
	</p>


</body>
</html>