<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-base-styles.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-custom-styles.jsp"%>

<link rel="stylesheet" type="text/css" href="${ctx }/css/menu.css" />
<link href="${ctx }/css/main.css" type="text/css" rel="stylesheet" />
<title>演示系统</title>
<style type="text/css">
body {
	margin: 0;
	height: 100%;
	/* The html and body elements cannot have any padding or margin. */
}
/* Wrapper for page content to push down footer */
#wrap {
	min-height: 100%;
	height: auto !important;
	height: 100%;
	/* Negative indent footer by it's height */
	margin: 0 auto -60px;
}

#activitiLogo {
	height: 30px !important;
	margin-top: -8px;
	margin-bottom: -8px;
}
/* Set the fixed height of the footer here */
#push,#footer {
	height: 60px;
}

#footer {
	text-align: center !important;
	margin-bottom: 。8px;
}

iframe {
	margin-top: .5em;
}
</style>

<script src="${ctx }/js/common/jquery.js" type="text/javascript"></script>
<script src="${ctx }/js/common/plugins/bootstrap/bootstrap.min.js"
	type="text/javascript"></script>
<script src="${ctx }/js/module/main/main.js" type="text/javascript"></script>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a data-target=".nav-collapse" data-toggle="collapse"
					class="btn btn-navbar"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a href="#" class="brand"> Demo For <img id="activitiLogo"
					src="${ctx}/images/activiti_logo.png" />
				</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="#" rel="main/welcome.action"><i
								class="icon-home icon-black"></i>欢迎</a></li>
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><i
								class="icon-th-large icon-black"></i>开始<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#" rel="oa/leave/apply">请假申请(自定)</a></li>
								<li><a href="#" rel="oa/leave/list/task">请假办理(自定)</a></li>
								<li><a href="#" rel="oa/leave/list/running">运行中流程(自定)</a></li>
								<li><a href="#" rel="oa/leave/list/finished">已结束流程(自定)</a></li>
							</ul></li>
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><i
								class="icon-fire icon-black"></i>动态表单<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#" rel="form/dynamic/process-list">流程列表(动态)</a></li>
								<li><a href="#" rel="form/dynamic/task/list">任务列表(动态)</a></li>
								<li><a href="#"
									rel="form/dynamic/process-instance/running/list">运行中流程表(动态)</a></li>
								<li><a href="#"
									rel="form/dynamic/process-instance/finished/list">已结束流程(动态)</a></li>
							</ul></li>
						<li><a href="#" rel='workflow/process-list'><i
								class="icon-wrench icon-black"></i>流程管理</a></li>
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><i
								class="icon-fire icon-black"></i>动态表单<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#" rel="form/dynamic/process-list">流程列表(动态)</a></li>
								<li><a href="#" rel="form/dynamic/task/list">任务列表(动态)</a></li>
								<li><a href="#"
									rel="form/dynamic/process-instance/running/list">运行中流程表(动态)</a></li>
								<li><a href="#"
									rel="form/dynamic/process-instance/finished/list">已结束流程(动态)</a></li>
							</ul></li>

						<li class="dropdown"></li>
					</ul>



					<ul class="nav pull-right">
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"> <i
								class="icon-user icon-black" style="margin-right: .3em"></i> 李 鹏<b
								class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a id="changePwd" href="#"><i
										class="icon-wrench icon-black"></i>修改密码</a></li>
								<li><a id="loginOut" href="#"><i
										class="icon-eject icon-black"></i>安全退出</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container">
			<iframe id="mainIframe" name="mainIframe" src="main/welcome.action"
				class="module-iframe" scrolling="auto" frameborder="0"
				style="width:100%; "></iframe>
		</div>
		<div id="footer">
			<hr class="soften">
			个人版权所有 </a> <span class="copyright">©2013</span>
		</div>
</body>
</html>