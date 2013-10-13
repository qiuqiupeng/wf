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
<sj:head jqueryui="true" locale="cn" />
<link rel="stylesheet" href="<s:url value="icomoon/style.css" />"
	type="text/css" />
<!--[if lte IE 7]>
<script src="css/icomoon-font/lte-ie7.js"></script>
<![endif]-->

<!-- Bootstrap css -->
<link rel="stylesheet" href="<s:url value="css/bootstrap.css" />"
	type="text/css" />
<link rel="stylesheet" href="<s:url value="css/main.css" />"
	type="text/css" />



</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index">Brand系统</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Dropdown <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
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
		</div>
		<!-- /.navbar-collapse -->
	</nav>

	<div class="container">
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
			<div class="main-container">
				<div class="hidden-phone hidden-tablet">
					<s:url var="menu" action="menu-ajax" namespace="/" />
					<sj:div id="menu" href="%{menu}">
					</sj:div>
					
					<sj:tabbedpanel id="localtabs">
						<sj:tab id="tab1" target="tone" label="欢迎" />
						<sj:tab id="tab2" target="ttwo" label="消息中心" />
						<sj:tab id="tab3" target="tthree" label="Local Tab Three"
							closable="true" />
						<sj:tab id="tab4" target="tfour" label="Local Tab Four"
							closable="true" />
						<div id="tone">Mauris mauris ante, blandit et, ultrices a,
							suscipit eget, quam. Integer ut neque. Vivamus nisi metus,
							molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh.
							Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur
							malesuada. Vestibulum a velit eu ante scelerisque vulputate.</div>
						<div id="ttwo">Sed non urna. Donec et ante. Phasellus eu
							ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at
							aliquet laoreet, mauris turpis porttitor velit, faucibus interdum
							tellus libero ac justo. Vivamus non quam. In suscipit faucibus
							urna.</div>
						<div id="tthree">Nam enim risus, molestie et, porta ac,
							aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus
							in massa. Aenean in pede. Phasellus ac libero ac tellus
							pellentesque semper. Sed ac felis. Sed commodo, magna quis
							lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus
							venenatis dui.</div>
						<div id="tfour">Cras dictum. Pellentesque habitant morbi
							tristique senectus et netus et malesuada fames ac turpis egestas.
							Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
							posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse
							eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
							Class aptent taciti sociosqu ad litora torquent per conubia
							nostra, per inceptos himenaeos.</div>
					</sj:tabbedpanel>
					
				</div>
				<div id="content" class="row">
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

</body>
</html>