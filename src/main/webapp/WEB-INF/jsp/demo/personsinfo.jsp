<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person Found</title>

<script type="text/javascript">
	$.subscribe('rowselect', function(event, data) {
		alert('Selected Row : ' + event.originalEvent.id);
	});
</script>

</head>
<body>
	<h3>Below are the details for all the employees.</h3>

	<s:select list="persons" listKey="emplid" theme="simple" />

	<s:url var="remoteurl" action="action/jsontable" />
	<sjg:grid id="gridtable" caption="用户列表   Examples" pager="true"
		onDblClickRowTopics="rowselect" dataType="json" href="%{remoteurl}"
		gridModel="persons" rowList="10,15,20,25" rowNum="20"
		rownumbers="true">
		<sjg:gridColumn name="emplid" index="emplid" title="ID"
			formatter="integer" sortable="false" />
		<sjg:gridColumn name="first_name" index="first_name" title="姓氏"
			sortable="true" />
		<sjg:gridColumn name="last_name" index="last_name" title="名称"
			sortable="false" />
		<sjg:gridColumn name="emplid" index="操作" title="操作"></sjg:gridColumn>
	</sjg:grid>

	<s:iterator value="persons">

		<s:url action="inputPersonUpdate" id="editUrl">
			<s:param name="emplid" value="emplid" />
		</s:url>

		<s:url action="personDelete" id="deleteUrl">
			<s:param name="emplid" value="emplid" />
		</s:url>


		<%--if value attribute is not specified
	the property tag will call the toString method
	of each Person object in the persons collection. --%>
		<p>
			<s:property />
			<a href="<s:property value="#editUrl"/>">Edit</a> &nbsp;&nbsp; <a
				href="<s:property value="#deleteUrl"/>">Delete</a>
		</p>


	</s:iterator>

	<p>
		<a href="<s:url action='inputPersonSave'/>">Create new employee</a>.
	</p>

	<p>
		<a href="index">Return home</a>
	</p>


</body>
</html>