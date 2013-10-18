<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8">
<title>Dashboard - Ace Admin</title>
<sj:head jqueryui="true" locale="cn" />

<meta name="description" content="overview &amp; stats">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- basic styles -->
<link rel="stylesheet" href="<s:url value="css/bootstrap.min.css" />"
	type="text/css" />
<link rel="stylesheet" href="<s:url value="css/font-awesome.min.css" />"
	type="text/css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->


<!-- ace styles -->
<link rel="stylesheet" href="<s:url value="css/ace.min.css" />"
	type="text/css" />
<link rel="stylesheet" href="<s:url value="css/ace-rtl.min.css" />"
	type="text/css" />
<link rel="stylesheet" href="<s:url value="css/ace-skins.min.css" />"
	type="text/css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
		<![endif]-->

<style type="text/css">
@font-face {
	font-family: 'Open Sans';
	font-style: normal;
	font-weight: 300;
	src: local('Open Sans Light'), local('OpenSans-Light'),
		url(font/google-dl.woff) format('woff');
}

@font-face {
	font-family: 'Open Sans';
	font-style: normal;
	font-weight: 400;
	src: local('Open Sans'), local('OpenSans'), url(font/google-cj.woff)
		format('woff');
}
</style>

</head>
<body class="login-layout">
	
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i> <span class="red">办公自动化</span>
									<span class="white">管理系统</span>
								</h1>
								<h4 class="blue">&copy; Company Name</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box"
									class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i> 请登录系统
											</h4>

											<div class="space-6"></div>

											<form action="login" class="signin-wrapper" method="post">
												<fieldset>
													<label class="block clearfix"> <span
														class="block input-icon input-icon-right"> <input
															type="text" class="form-control" placeholder="用户名" name="username">
															<i class="icon-user"></i>
													</span>
													</label> <label class="block clearfix"> <span
														class="block input-icon input-icon-right"> <input
															type="password" class="form-control" placeholder="密码" name="password"> 
															<i class="icon-lock"></i>
													</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline"> <input type="checkbox" name="rememberMe"
															class="ace"> <span class="lbl"> 记住我</span>
														</label>

														<button type="submit"
															class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i> 登录
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>
										</div>
										<!-- /widget-main -->
									</div>
									<!-- /widget-body -->
								</div>
								<!-- /login-box -->
							</div>
							<!-- /position-relative -->
						</div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
		</div>
	<!-- /.main-container -->
</body>
</html>