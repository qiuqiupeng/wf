<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<sj:head jqueryui="true" />

<style type="text/css">
input {
	width: 100px;
}

select {
	width: auto;
	height: auto;
	padding: 0px 0px;
}
</style>

</head>
<body>

	<s:url id="remoteurl" action="user-data-provider" namespace="/json" />
	<sjg:grid id="gridtable" caption="用户列表" dataType="json"
		href="%{remoteurl}" pager="true" gridModel="gridModel" width="800"
		height="365" shrinkToFit="false" rowList="10,15,20" rowNum="15"
		viewrecords="true" rownumbers="true" resizable="true">
		<sjg:gridColumn name="id" index="id" title="ID" sortable="false"
			hidden="true" />
		<sjg:gridColumn name="name" index="name" title="Name" sortable="true" />
		<sjg:gridColumn name="number" index="number" title="number"
			sortable="false" />
		<sjg:gridColumn name="email" index="email" title="email"
			sortable="false" />
	</sjg:grid>
</body>
</html>