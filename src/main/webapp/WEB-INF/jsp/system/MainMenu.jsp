<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<html>
<head>
<sj:head jqueryui="true" jquerytheme="pepper-grinder" />
<sb:head includeScripts="true" includeScriptsValidation="false"
	includeStylesResponsive="true" />
<script type="text/javascript">
	$.subscribe('completeDiv', function(event, data) {
		if (event.originalEvent.status == "success") {
		}
	});
	$.subscribe('errorDiv', function(event, data) {
		$('#resulterror').html(
				'<br/><br/><strong>Error request '
						+ event.originalEvent.request.statusText
						+ ' completed with ' + event.originalEvent.status
						+ '.</strong><br/>Status: '
						+ event.originalEvent.request.status);
	});
</script>
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
								<sj:menu id="menuWithItems" cssStyle="width:100%">
									<sj:menuItem title="Struts2" href="/system/welcome"
										targets="resultnormal" />
									<sj:menuItem title="Struts2 jQuery News"
										menuIcon="ui-icon-extlink"
										href="http://www.jgeppert.com/category/java/struts2-jquery/" />
									<sj:menuItem title="Struts2 Plugins">
										<sj:menu id="subMenuPlugins" cssStyle="width:50%">
											<sj:menuItem title="Struts2 Plugins"
												href="https://cwiki.apache.org/S2PLUGINS/home.html" />
											<sj:menuItem title="Struts2 jQuery Plugin"
												href="http://code.google.com/p/struts2-jquery/" />
											<sj:menuItem title="Struts2 Bootstrap Plugin"
												href="http://code.google.com/p/struts2-jquery/" />
										</sj:menu>
									</sj:menuItem>

									<sj:menuItem title="Struts2 @ Social Media">
										<sj:menu id="subMenuSocialMedia" cssStyle="width:50%">
											<sj:menuItem title="Struts2 @ Twitter"
												href="https://twitter.com/TheApacheStruts" />
											<sj:menuItem title="Struts2 @ Google+"
												href="https://www.google.com/+ApacheStruts" />
											<sj:menuItem title="Struts2 @ Facebook"
												href="http://www.facebook.com/struts2" />
										</sj:menu>
									</sj:menuItem>

									<sj:menuItem title="AJAX">
										<sj:menu id="subMenuAjax" cssStyle="width:50%">
											<s:url var="ajax1" value="/system/index" />
											<sj:menuItem title="Ajax 1" href="%{ajax1}"
												targets="resultnormal" />
											<s:url var="ajax2" value="/system/welcome.action" />
											<sj:menuItem title="Ajax 2" href="%{ajax2}"
												targets="resultnormal" effect="highlight"
												effectDuration="2500" />
											<s:url var="ajax3" value="/system/welcome.action" />
											<sj:menuItem title="Ajax 3" href="%{ajax3}"
												targets="resultnormal" onBeforeTopics="beforeLink"
												onCompleteTopics="completeLink" />
											<s:url var="ajax4" value="/system/welcome.action" />
											<sj:menuItem title="Ajax 4" href="%{ajax4}"
												menuIcon="ui-icon-gear" targets="resultnormal"
												effect="bounce" effectDuration="1000" />
										</sj:menu>
									</sj:menuItem>
								</sj:menu>

							</div>
							<div Class="span9">
								<s:url var="ajax" value="/system/welcome.action">
								</s:url>
								<sj:div id="resultnormal" href="%{ajax}" indicator="indicator"
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
