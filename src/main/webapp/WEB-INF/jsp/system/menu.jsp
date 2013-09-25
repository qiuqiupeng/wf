<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="keywords" content="struts2, jquery, jquery-ui, plugin, showcase, jqgrid" />
	<meta http-equiv="description" content="A Showcase for the Struts2 jQuery Plugin" />

	<title>Struts2 jQuery Plugin Showcase - </title>

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
					<h1 class="ui-state-default" style="background: none; border: none; margin: 0;">WEB Framework Showcase</h1>
				</div>
				<div id="themebox" class="ym-g25 ym-gr">
					<img id="myDefaultIndicator" src="images/ajax-loader.gif" alt="Loading..." style="display:none"/>
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
					<s:url var="menuurl" action="showcase-menu-ajax" namespace="/system" />
					<sj:div id="menu" href="%{menuurl}" cssClass="ym-wbox">
					</sj:div>
				</aside>
				<article class="ym-g75 ym-gr content">
					<s:url var="remotelinkurl" action="remote-link" namespace="/system" />
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
				Written by  <a href="http://www.jgeppert.com" title="Java Developer Blog">Johannes Geppert</a><br/>
				Layout based on <a href="http://www.yaml.de/" title="OpenSource CSS Layout">YAML</a>
			</p>
		</div>
	</div>
</footer>

</body>
</html>
