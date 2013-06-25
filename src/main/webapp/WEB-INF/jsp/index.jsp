<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<html>
<head>
<sj:head jqueryui="true" jquerytheme="pepper-grinder" />
<sb:head includeScripts="true" includeScriptsValidation="false"
	includeStylesResponsive="true" />
<title>WF demo</title>

  <s:if test="%{theme == 'showcase' || theme == null}">
      <sj:head debug="true" compressed="true" jquerytheme="showcase" customBasepath="themes" loadFromGoogle="%{google}" ajaxhistory="%{ajaxhistory}" defaultIndicator="myDefaultIndicator" defaultLoadingText="Please wait ..."/>
  </s:if>
  <s:else>
      <sj:head debug="true" compressed="true" jquerytheme="%{theme}" loadFromGoogle="%{google}" ajaxhistory="%{ajaxhistory}" defaultIndicator="myDefaultIndicator" defaultLoadingText="Please wait ..."/>
  </s:else>


	<link href="<s:url value="/styles/flexible-grids.css" />" rel="stylesheet" type="text/css" />
	<!--[if lte IE 7]>
	<link href="<s:url value="/yaml/core/iehacks.min.css" />" rel="stylesheet" type="text/css" />
	<![endif]-->

	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- This files are needed for AJAX Validation of XHTML Forms -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/struts/utils.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/struts/xhtml/validation.js"></script>


	<!-- This file includes necessary functions/topics for validation and all topic examples -->
	<script type="text/javascript" src="<s:url value="/js/showcase.js" />"></script>
	<!-- Extend the Struts2 jQuery Plugin with an richtext editor -->
	<script type="text/javascript" src="<s:url value="/js/extendplugin.js" />"></script>
</head>
<body>

<header class="ui-widget-header">
	<div class="ym-wrapper">
		<div class="ym-wbox" style="padding: 5px 0 0 0;">
			<div class="ym-grid linearize-level-1">
				<div class="ym-g75 ym-gl">
					<h1 class="ui-state-default" style="background: none; border: none; margin: 0;">WF Showcase</h1>
				</div>
				<div id="themebox" class="ym-g30 ym-gr">
					<img id="myDefaultIndicator" src="images/ajax-loader.gif" alt="Loading..." style="display:none"/>
				</div>
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
	</div>
</header>

<nav id="nav" class="ui-widget-header">
	<div class="ym-wrapper">
		<div class="ym-hlist ui-widget-header">
			<ul id="navlist">
				<li><s:url var="menuurl" action="showcase-menu-ajax" namespace="/" /><sj:a id="ajaxmenulink" href="%{menuurl}" targets="menu">Ajax</sj:a></li>
				<li><s:url var="widgetsurl" action="showcase-menu-widgets" namespace="/" /><sj:a id="widgetsmenulink" href="%{widgetsurl}" targets="menu">Widgets</sj:a></li>
				<li><s:url var="effectsurl" action="showcase-menu-effects" namespace="/" /><sj:a id="effectsmenulink" href="%{effectsurl}" targets="menu">Effects / Interactions</sj:a></li>
				<li><a href="http://code.google.com/p/struts2-jquery/downloads/list">Download</a></li>
				<li><a href="http://code.google.com/p/struts2-jquery/w/list">Wiki</a></li>
			</ul>
		</div>
	</div>
</nav>


<div id="main">
	<div class="ym-wrapper">
		<div class="ym-wbox">
			<section class="ym-grid linearize-level-1">
				<aside class="ym-g25 ym-gl">
					<s:url var="menuurl" action="menu-ajax" namespace="/" />
					<sj:div id="menu" href="%{menuurl}" cssClass="ym-wbox">
					</sj:div>
				</aside>
				<article class="ym-g75 ym-gr content">
					<s:url var="remotelinkurl" action="remote-link" namespace="/" />
					<sj:div id="content" href="%{remotelinkurl}" cssClass="ym-wbox">
					</sj:div>
				</article>
			</section>
		</div>
	</div>
</div>
<footer>
	<div class="ym-wrapper">
		<div class="ym-wbox">
			<p style="text-align: center;">
				Written by  <a href="http://www.jgeppert.com" title="Java Developer Blog">李鹏</a><br/>
			</p>
		</div>
	</div>
</footer>

</body>
</html>
