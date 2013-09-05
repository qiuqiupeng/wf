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
<title>StartUp Admin</title>
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
					<p class="name">Mr. Srinu Basava</p>
				</div>
			</div>
			<div class="content">
				<div id="accordion1" class="accordion no-margin">
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseSeven" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Signups <span
								class="label info-label label-important">06</span>
							</a>
						</div>
						<div class="accordion-body in collapse" id="collapseSeven"
							style="height: auto;">
							<div class="accordion-inner">
								<ul class="signups">
									<li>
										<div class="user pull-left">
											<img src="img/avatar-8.png" alt="user">
										</div>
										<div class="info">
											<h6>Sandy</h6>
											<p class="designation">CTO of Lukbuk</p>
										</div>
									</li>
									<li>
										<div class="user pull-left">
											<img src="img/avatar-7.png" alt="user">
										</div>
										<div class="info">
											<h6>Srinu Basava</h6>
											<p class="designation">Designer</p>
										</div>
									</li>
									<li>
										<div class="user pull-left">
											<img src="img/avatar-1.png" alt="user">
										</div>
										<div class="info">
											<h6>Rahul Dravid</h6>
											<p class="designation">Favourite Cricketer</p>
										</div>
									</li>
									<li>
										<div class="user pull-left">
											<img src="img/avatar-3.png" alt="user">
										</div>
										<div class="info">
											<h6>Prem Pillai</h6>
											<p class="designation">Senior Developer</p>
										</div>
									</li>
									<li>
										<div class="user pull-left">
											<img src="img/avatar-4.png" alt="user">
										</div>
										<div class="info">
											<h6>Arjun URS</h6>
											<p class="designation">ROR Developer</p>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseOne" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Online <span
								class="label info-label label-success">03</span>
							</a>
						</div>
						<div class="accordion-body collapse" id="collapseOne"
							style="height: 0;">
							<div class="accordion-inner">
								<div class="online-users">
									<ul>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>Sandy</span>
										</a></li>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>Srinu Basava</span>
										</a></li>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>John Doe</span>
										</a></li>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>Steve waugh</span>
										</a></li>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>Robin Fleming</span>
										</a></li>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>Arjun URS</span>
										</a></li>
										<li><a href="" data-lastname="Srinu Basava"
											data-status="online"> <span>Prem Pillai</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseTwo" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Inbox <span
								class="label info-label label-warning">17</span>
							</a>
						</div>
						<div class="accordion-body collapse" id="collapseTwo"
							style="height: 0px;">
							<div class="accordion-inner">
								<div id="scrollbar-three">
									<div class="scrollbar">
										<div class="track">
											<div class="thumb">
												<div class="end"></div>
											</div>
										</div>
									</div>
									<div class="viewport">
										<div class="overview">
											<ul class="inbox">
												<li><a href="#" class="designation">Best design</a></li>
												<li><a href="#" class="designation">Check your
														email</a></li>
												<li><a href="#" class="designation">Invitation</a></li>
												<li><a href="#" class="designation">Birthday party</a>
												</li>
												<li><a href="#" class="designation">Design day</a></li>
												<li><a href="#" class="designation">Best design</a></li>
												<li><a href="#" class="designation">Check your
														email</a></li>
												<li><a href="#" class="designation">Invitation</a></li>
												<li><a href="#" class="designation">Birthday party</a>
												</li>
												<li><a href="#" class="designation">Design day</a></li>
												<li><a href="#" class="designation">Best design</a></li>
												<li><a href="#" class="designation">Check your
														email</a></li>
												<li><a href="#" class="designation">Invitation</a></li>
												<li><a href="#" class="designation">Birthday party</a>
												</li>
												<li><a href="#" class="designation">Design day</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseThree" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Payment Due
								<span class="label info-label">24</span>
							</a>
						</div>
						<div class="accordion-body collapse" id="collapseThree"
							style="height: 0px;">
							<div class="accordion-inner">
								<ul class="payments">
									<li><a href="#" class="designation">John smith - $2679</a>
									</li>
									<li><a href="#" class="designation">Marko - $ 4490</a></li>
									<li><a href="#" class="designation">MC Doe - $1989</a></li>
									<li><a href="#" class="designation">Steve Stores -
											$3389</a></li>
									<li><a href="#" class="designation">VLS Supermarket -
											$2265</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseFour" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Clients <span
								class="label info-label label-important">249</span>
							</a>
						</div>
						<div class="accordion-body collapse" id="collapseFour"
							style="height: 0px;">
							<div class="accordion-inner">
								<ul class="clients">
									<li><a href="#" class="designation">Srinu Basava</a></li>
									<li><a href="#" class="designation">Rahul Dravid</a></li>
									<li><a href="#" class="designation">MC Dhoni</a></li>
									<li><a href="#" class="designation">Steve Jobs</a></li>
									<li><a href="#" class="designation">VK Singh</a></li>
									<li><a href="#" class="designation">Julia</a></li>
									<li><a href="#" class="designation">BSR Smith</a></li>
									<li><a href="#" class="designation">Henrik</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseFive" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Staff
								Contacts <span class="label info-label label-info">112</span>
							</a>
						</div>
						<div class="accordion-body collapse" id="collapseFive"
							style="height: 0px;">
							<div class="accordion-inner">
								<ul class="staff">
									<li><a href="#">John Doe - <span>0000 7777 00</span></a></li>
									<li><a href="#">Mill Gates - <span>1111 9999 11</span></a>
									</li>
									<li><a href="#">Mike Mills - <span>2222 2332 22</span></a>
									</li>
									<li><a href="#">Crucks - <span>4444 4444 44</span></a></li>
									<li><a href="#">Robin Mills - <span>2211 2211
												22</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a href="#collapseSix" data-parent="#accordion1"
								data-toggle="collapse" class="accordion-toggle"> Content <span
								class="label info-label">05</span>
							</a>
						</div>
						<div class="accordion-body collapse" id="collapseSix"
							style="height: 0px;">
							<div class="accordion-inner">
								<ul class="contents">
									<li><a href="#">Articles</a></li>
									<li><a href="#">Blogs</a></li>
									<li><a href="#">Pages</a></li>
									<li><a href="#">News</a></li>
									<li><a href="#">Comments</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="easy-pie-chart">
				<div class="pie_chart_1" data-percent="69">69%</div>
				<p class="name">Animated Chart</p>
			</div>
		</div>
		<div class="dashboard-wrapper">
			<div id="main-nav" class="hidden-phone hidden-tablet">
				<ul>
					<li><a href="index"> <span class="fs1" 
							data-icon="&#xe0a0;"></span>Dashboard
					</a></li>


					<li><a href="gallery"> <span class="fs1"
							 data-icon="&#xe00d;"></span> 基础资料
					</a></li>

					<li><a href="forms"> <span class="fs1" 
							data-icon="&#xe0b8;"></span> 单据
					</a>
						<ul>
							<li><a href="forms">Basic Forms</a></li>
							<li><a href="extended-forms">Extended Forms</a></li>
							<li><a href="form-wizards">Form Wizards</a></li>
						</ul></li>
					<li><a href="reports"> <span class="fs1"
							 data-icon="&#xe097;"></span> 报表
					</a></li>
					<li><a href="graphs"> <span class="fs1" 
							data-icon="&#xe096;"></span> 图片
					</a>
						<ul>
							<li><a href="graphs">Flot Charts</a></li>
							<li><a href="google-charts">Google Charts</a></li>
							<li><a href="animated-charts">Animated Charts</a></li>
						</ul></li>
					<li><a href="ui-elements"> <span class="fs1"
							data-icon="&#xe0a5;"></span> UI Lab
					</a>
						<ul>
							<li><a href="clients-list">Clients List</a></li>
							<li><a href="ui-elements">General Elements</a></li>
							<li><a href="messages">Messages</a></li>
							<li><a href="timeline">Timeline</a></li>
							<li><a href="pricing">Pricing Plans</a></li>
							<li><a href="grid">Grid Layout</a></li>
							<li><a href="icons">Buttons &amp; Icons</a></li>
							<li><a href="typography">Typography</a></li>
							<li><a href="layout">Blank Page</a></li>
						</ul></li>
					<li><a href="tables"> <span class="fs1" 
							data-icon="&#xe14a;"></span> 表格
					</a>
						<ul>
							<li><a href="tables">Static Tables</a></li>
							<li><a href="dynamic-tables">Dynamic Tables</a></li>
						</ul></li>

					<li><s:url id="invoice" value="/invoice.action" /> <sj:a
							id="link1" href="%{invoice}" targets="content">
							<span class="fs1"  data-icon="&#xe0aa;"></span> 其他
    </sj:a>


						<ul>
							<li><s:url id="invoice" value="/invoice.action" />
								<sj:a id="link2" href="%{invoice}" targets="content">
    Invoice</sj:a></li>
							<li><a href="calendar">Calendar</a></li>
							<li><a href="profile">Profile</a></li>
							<li><a href="error">404 Error</a></li>
							<li><a href="faq">Faq</a></li>
							<li><a href="login">Login</a></li>
						</ul></li>
				</ul>
				<div class="clearfix"></div>
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