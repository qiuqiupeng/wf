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
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="signin">
					<h2 class="center-align-text">StartUp管理系统</h2>
					<form action="login" class="signin-wrapper" method="post">

						<div class="content">
							<input class="input input-block-level" name="username"
								placeholder="username" type="text" value="" /> <input
								class="input input-block-level" name="password"
								placeholder="Password" type="password" /> <input
								type="checkbox" name="rememberMe" value="true" /><font size="2">Remember
								Me</font>
						</div>
						<div class="actions">
							<input class="btn btn-info pull-right" type="submit"
								value="Login">
							<div class="clearfix"></div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>

	
</body>
</html>