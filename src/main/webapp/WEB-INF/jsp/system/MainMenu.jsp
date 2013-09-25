<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<html>
<head>
<sj:head jqueryui="true" jquerytheme="pepper-grinder" />
<sb:head includeScripts="true" includeScriptsValidation="false"
	includeStylesResponsive="true" />
<title>WF demo</title>

</head>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a data-target=".nav-collapse" data-toggle="collapse"
					class="btn btn-navbar"> </a> <a href="#" class="brand"> DEMO
					SYSTEM </a>
				<div class="nav-collapse">
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

		<!-- Part 1: Wrap all page content here -->
		<div id="wrap">
			<!-- Begin page content -->
			<sj:tabbedpanel id="localtabs">
				<sj:tab id="tab1" target="tone" label="Welcome" />
				<div id="tone" style="height:550px; overflow:auto;">
					<div class="container-fluid">
						<div class="row-fluid">
							<div Class="span3">
								<s:url var="menuurl" action="menu-ajax" namespace="/system" />
								<sj:div id="menu" href="%{menuurl}">
								</sj:div>
							</div>
							<div Class="span9">
								<s:url var="ajax" value="/system/welcome.action">
								</s:url>
								<sj:div id="content" href="%{ajax}" indicator="indicator"
									onBeforeTopics="beforeDiv" onCompleteTopics="completeDiv"
									onErrorTopics="errorDiv"
									cssClass="result ui-widget-content ui-corner-all">
									<img id="indicator" src="images/indicator.gif" alt="Loading..."
										style="display:none" />
								</sj:div>
								<br /> <br />
							</div>
						</div>
					</div>
				</div>
			</sj:tabbedpanel>
		</div>
	</div>
</body>
</html>
