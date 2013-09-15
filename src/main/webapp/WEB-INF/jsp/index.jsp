<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<!DOCTYPE html>
<!--[if lt IE 7]>
    <html class="lt-ie9 lt-ie8 lt-ie7" lang="en">
  <![endif]-->

<!--[if IE 7]>
    <html class="lt-ie9 lt-ie8" lang="en">
  <![endif]-->

<!--[if IE 8]>
    <html class="lt-ie9" lang="en">
  <![endif]-->

<!--[if gt IE 8]>
    <!-->
<html lang="en">
<!--
  <![endif]-->

<head>
<meta charset="utf-8">
<title>StartUp管理系统</title>
<sb:head includeScripts="true" includeStyles="false"
	includeStylesResponsive="true" />
<sj:head />
<link rel="stylesheet" href="<s:url value="icomoon/style.css" />"
	type="text/css" />
<!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js"></script>
    <![endif]-->

<!-- NVD graphs css -->
<link rel="stylesheet" href="<s:url value="css/nvd-charts.css" />"
	type="text/css" />

<!-- Bootstrap css -->
<link rel="stylesheet" href="<s:url value="css/main.css" />"
	type="text/css" />

<!-- fullcalendar css -->
<link rel="stylesheet"
	href="<s:url value="css/fullcalendar/fullcalendar.css" />"
	type="text/css" />
<link rel="stylesheet"
	href="<s:url value="css/fullcalendar/fullcalendar.print.css" />"
	type="text/css" media='print' />

<script src="js/html5-trunk.js"></script>

</head>
<body>
	<header>
		<a href="index" class="logo">欢迎</a>
		<div id="mini-nav">
			<ul class="hidden-phone">
				<li><a href="#documentation" data-toggle="modal"
					data-original-title=""> 文档 </a>
					<div id="documentation" class="modal hide fade" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel1" >
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								>Ã</button>
							<h4 id="myModalLabel1">Full html documentation is available
								on purchase.</h4>
						</div>
						<div class="modal-body">
							<img src="img/documentation.png" />
						</div>
					</div></li>
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
				<li><a href="faq"><span class="fs1" 
						data-icon="&#xe03b;"></span></a></li>
				<li><a href="profile"><span class="fs1" 
						data-icon="&#xe090;"></span></a></li>
				<li><a href="login"><span class="fs1" 
						data-icon="&#xe0b1;"></span></a></li>
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
					<p class="name"><s:label name="username"></s:label></p>
				</div>
			</div>
			<div class="content">
			<s:url var="accordion" action="accordion-ajax" namespace="/" />
					<sj:div id="accordion" href="%{accordion}">
					</sj:div>
			</div>
			<div class="easy-pie-chart">
				<div class="pie_chart_1" data-percent="69">69%</div>
				<p class="name">Animated Chart</p>
			</div>
		</div>
		<div class="dashboard-wrapper">
			<div id="main-nav" class="hidden-phone hidden-tablet">
				<s:url var="menu" action="menu-ajax" namespace="/" />
					<sj:div id="menu" href="%{menu}">
					</sj:div>
			</div>

			<div class="main-container">

				<div class="page-header">
					<div class="pull-left">
						<h2>欢迎</h2>
					</div>
					<div class="pull-right">
						<ul class="stats">
							<li class="color-first"><span class="fs1" 
								data-icon="&#xe0b3;"></span>
								<div class="details">
									<span class="big">12</span> <span>未处理任务</span>
								</div></li>
							<li class="color-second hidden-phone"><span class="fs1"
								 data-icon="&#xe052;"></span>
								<div class="details" id="date-time">
									<span>Date </span> <span>Day, Time</span>
								</div></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>

				<div id="content" class="row-fluid">
					<!-- 内容显示区域 -->
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

	<script src="js/bootstrap.js"></script>
	<script src="js/moment.js"></script>

	<!-- Easy Pie Chart JS -->
	<script src="js/pie-charts/jquery.easy-pie-chart.js"></script>

	<!-- Tiny scrollbar js -->
	<script src="js/tiny-scrollbar.js"></script>

	<!-- Custom Js -->
	<script src="js/theming.js"></script>
	<script src="js/custom.js"></script>

	
</body>
</html>