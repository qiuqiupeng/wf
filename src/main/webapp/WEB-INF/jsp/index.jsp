<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<!DOCTYPE html>
<!--[if lt IE 7]>
    <html class="lt-ie9 lt-ie8 lt-ie7" >
  <![endif]-->

<!--[if IE 7]>
    <html class="lt-ie9 lt-ie8" >
  <![endif]-->

<!--[if IE 8]>
    <html class="lt-ie9" >
  <![endif]-->

<!--[if gt IE 8]>
    <!-->
<html>
<!--
  <![endif]-->

<head>
<meta charset="utf-8">
<title>StartUp管理系统</title>
<sb:head includeScripts="true" includeStyles="false"
	includeStylesResponsive="true" />
<sj:head jqueryui="true" locale="cn"/>
<link rel="stylesheet" href="<s:url value="icomoon/style.css" />"
	type="text/css" />
<!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js"></script>
    <![endif]-->

<!-- Bootstrap css -->
<link rel="stylesheet" href="<s:url value="css/main.css" />"
	type="text/css" />



</head>
<body>
	<header>
		<a href="index" class="logo">欢迎</a>
		<div id="mini-nav">
			<ul class="hidden-phone">

				<li><s:url var="form2_url" action="layout" namespace="/" /> <sj:dialog
						id="remoteformdialog" autoOpen="false" href="%{form2_url}"
						modal="true" width="1024" height="600" /> <sj:a
						href="%{form2_url}" openDialog="remoteformdialog"
						openDialogTitle="空白演示窗口">
    	空白窗口
    </sj:a></li>

				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href=""> 主题 <span
						class="caret icon-white"></span>
				</a>
					<ul class="dropdown-menu pull-right">
						<li><a href="#" id="default">Default</a></li>
						<li><a href="#" id="facebook">Facebook</a></li>
						<li><a href="#" id="foursquare">Foursquare</a></li>
						<li><a href="#" id="google-plus">Google+</a></li>
						<li><a href="#" id="instagram">Instagram</a></li>
						<li><a href="#" id="whitesmoke">White Smoke</a></li>
						<li><a href="#" id="grey">Grey</a></li>
					</ul></li>
				<li><a href="faq"><span class="fs1" data-icon="&#xe03b;"></span></a></li>
				<li><a href="profile"><span class="fs1"
						data-icon="&#xe090;"></span></a></li>
				<li><a href="login"><span class="fs1" data-icon="&#xe0b1;"></span></a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
	</header>
	<div class="container-fluid">
		<div class="left-sidebar hidden-tablet hidden-phone">
			<div class="user-details">
				<div class="user-img">
					<img src="img/user-avatar.png" class="avatar" alt="Avatar">
				</div>
				<div class="welcome-text">
					<span>已登录</span>
					<p class="name">
						<s:label name="username"></s:label>
					</p>
				</div>
			</div>
			<div class="content">
				<s:url var="accordion" action="accordion-ajax" namespace="/" />
				<sj:div id="accordion" href="%{accordion}">
				</sj:div>
			</div>
		</div>
		<div class="dashboard-wrapper">
			<div id="main-nav" class="hidden-phone hidden-tablet">
				<s:url var="menu" action="menu-ajax" namespace="/" />
				<sj:div id="menu" href="%{menu}">
				</sj:div>
			</div>

			<div class="main-container">
				<div id="content" class="row-fluid">
					<!-- 内容显示区域 -->
					<s:url id="remoteurl" action="user-data-provider" namespace="/json" />
					<sjg:grid id="gridtable" caption="用户列表" dataType="json"
						href="%{remoteurl}" pager="true" gridModel="gridModel" width="800"
						height="365" shrinkToFit="false" rowList="10,15,20" rowNum="15"
						viewrecords="true" rownumbers="true" resizable="true">
						<sjg:gridColumn name="id" index="id" title="ID" sortable="false"
							hidden="true" />
						<sjg:gridColumn name="name" index="name" title="Name"
							sortable="true" />
						<sjg:gridColumn name="number" index="number" title="number"
							sortable="false" />
						<sjg:gridColumn name="email" index="email" title="email"
							sortable="false" />
					</sjg:grid>




					<s:url var="welcome" action="welcome" namespace="/" />
					<sj:div id="welcome" href="%{welcome}">
					</sj:div>
				</div>
				<!-- Row fluid end -->

			</div>
			<!-- Main dashboard wrapper end -->
		</div>
		<!-- Main dashboard container end -->
	</div>
	<!-- Bootstrap container fluid end -->



</body>
</html>