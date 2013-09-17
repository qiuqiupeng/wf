<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
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
<html>
<!--
  <![endif]-->

<head>
<meta charset="utf-8">
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

<link rel="stylesheet"
	href="<s:url value="css/bootstrap-editable.css" />" type="text/css" />


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




	<div id="main-nav" class="hidden-phone hidden-tablet">
		<!-- Main navigation start -->
		<button class="btn hidden-tablet" type="button">
			<span class="fs1" data-icon="&#xe024;"></span> 新增
		</button>
		<button class="btn hidden-tablet" type="button">
			<span class="fs1" data-icon="&#xe060;"></span> 保存
		</button>
		<button class="btn hidden-tablet" type="button">
			<span class="fs1" data-icon="&#xe0fa;"></span> 删除
		</button>
		<s:url id="ajax" value="ajax1.action" />
		<sj:a id="ajaxlink" href="%{ajax}" targets="content" button="true"
			cssClass="btn hidden-tablet">
			<span class="fs1" data-icon="&#xe0fa;"></span> 测试
	</sj:a>

		<div class="clearfix"></div>

	</div>
	<!-- Main navigation end -->

	<div class="main-container">
		<!-- Main container start -->

		<div class="page-header">
			<!-- Page header start -->
			<div class="clearfix"></div>
		</div>
		<!-- Page header end -->

		<div class="row-fluid">
			<!-- Row fluid start -->
			<div class="span12">
				<!-- Your Content -->
			</div>
		</div>
		<!-- Row fluid end -->

		<div class="row-fluid">
			<!-- Row fluid with 2 columns start -->
			<div class="span6">
				<!-- Your Content -->
			</div>
			<div class="span6">
				<!-- Your Content -->
			</div>
		</div>
		<!-- Row fluid with 2 columns end -->

		<div class="row-fluid">
			<!-- Row fluid with 3 columns start -->
			<div class="span4">
				<!-- Your Content -->
			</div>
			<div class="span4">
				<!-- Your Content -->
			</div>
			<div class="span4">
				<!-- Your Content -->
			</div>
		</div>
		<!-- Row fluid with 3 columns end -->

	</div>
	<!-- Main dashboard wrapper end -->


	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/moment.js"></script>

	<!-- Easy Pie Chart JS -->
	<script src="js/pie-charts/jquery.easy-pie-chart.js"></script>

	<!-- Tiny scrollbar js -->
	<script src="js/tiny-scrollbar.js"></script>

	<!-- Custom Js -->
	<script src="js/theming.js"></script>
	<script src="js/custom.js"></script>

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'http://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-41161221-1', 'srinu.me');
		ga('send', 'pageview');
	</script>
</body>
</html>