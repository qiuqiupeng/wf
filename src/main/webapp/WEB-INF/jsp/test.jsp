<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="4">
		<tbody>
			<tr>
				<td width="52%" bgcolor="#FFFFCC"><a href="#"><img src=""
						name="Logo" alt="logo name" width="150" height="70" border="0"
						style="background-color: #CC9966;">
				</a>
				</td>
				<td width="48%" bgcolor="#FFFFCC" style="text-align: right;"><a
					href="#"> About US </a> &#149; <a href="#">Contact</a> &#149; <a
					href="#">Site Map</a>&nbsp;<br>
					<table width="100%" border="0" cellspacing="0" cellpadding="4">
						<thead>
							<tr>
								<td width="74%" align="right"><a href="#">Link1</a>
								</td>
								<td width="0%"><strong>|</strong>
								</td>
								<td width="7%"><a href="#">Link2</a>
								</td>
								<td width="2%"><strong>|</strong>
								</td>
								<td width="7%"><a href="#">Link3</a>
								</td>
								<td width="2%"><strong>|</strong>
								</td>
								<td width="8%" align="right">Link4</td>
							</tr>
						</thead>
					</table></td>
			</tr>
		</tbody>
	</table>
	This is my JSP page.
	<br>
	<s:property value="user" />
	<br>
	<s:textfield name="user" label="用户名"></s:textfield>
	<br>
	<s:property value="sysAccount.name" />
	<br>
	<s:property value="sysAccount.nickName" />
	<br>
	<s:property value="sysAccount.password" />
	<br>
	<sj:textfield name="user" label="TEST"></sj:textfield><br>
	





	<table width="100%" border="0" cellspacing="0" cellpadding="2"
		bgcolor="#FFFFCC">
		<tr>
			<td align="center">
				<p>
					<a href="#"><font size="2" face="Arial, Helvetica,
sans-serif">About</font>
					</a><font size="2" face="Arial, Helvetica, sans-serif"> | <a
						href="#">Services</a> | <a href="#">Products</a> | <a href="#">What
							is New</a> | <a href="#">Contact Us</a>
					</font>
				</p>
				<p>
					<font size="-1">Copyright (c) 2007 MySite -
						http://www.mysite.com</font>
				</p></td>
		</tr>
	</table>
</body>
</html>
