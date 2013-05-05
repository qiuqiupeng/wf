<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<s:include value="/WEB-INF/jsp/commons/meta.jsp"/>
<title>Person Updated</title>
</head>
<body>
	<h3>Below are the details of the person updated.</h3>

	<s:if test="person != null">



		<p>
			<s:property value="person" />
		</p>



	</s:if>

	<s:else>

		<p>No person was found to update.</p>
	</s:else>

	<p>
		<a href="index">Find another employee</a>
	</p>
	<p>
		<a href="<s:url action='allPersonsFinder'/>">Find all employees</a>.
	</p>


</body>
</html>