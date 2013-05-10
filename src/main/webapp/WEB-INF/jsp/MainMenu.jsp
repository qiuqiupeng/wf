<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<sb:head includeScripts="true" includeScriptsValidation="false" includeStylesResponsive="true"/>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-base-styles.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-custom-styles.jsp"%>
<title>WF demo</title>

<!-- Le styles -->

<link rel="stylesheet" type="text/css" href="${ctx }/css/menu.css" />
<link href="${ctx }/css/main.css" type="text/css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

<style type="text/css">
/* Sticky footer styles
      -------------------------------------------------- */
html,body {
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

/* Set the fixed height of the footer here */
#push,#footer {
	height: 60px;
}

#footer {
	background-color: #f5f5f5;
}

/* Lastly, apply responsive CSS fixes as necessary */
@media ( max-width : 767px) {
	#footer {
		margin-left: -20px;
		margin-right: -20px;
		padding-left: 20px;
		padding-right: 20px;
	}
}

/* Custom page CSS
      -------------------------------------------------- */
/* Not required for template or sticky footer method. */
.container {
	width: auto;
	max-width: 680px;
}


#activitiLogo {
	height: 30px !important;
	margin-top: -8px;
	margin-bottom: -8px;
}
</style>
</head>

<body>



	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a data-target=".nav-collapse" data-toggle="collapse"
					class="btn btn-navbar"> </a> <a href="#" class="brand"> Demo
					For <img id="activitiLogo" src="${ctx}/images/activiti_logo.png" />
				</a>
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
			<s:div cssclass="container-fluid">
				<s:div cssclass="row-fluid">
					<s:div cssClass="span3">

						<s:div cssclass="well sidebar-nav">
							<s:set id="contextPath"
								value="#request.get('javax.servlet.forward.context_path')" />
							<!--
<sj:accordion list="mylist" cssClass="nav nav-list"/>
-->

							<sjt:tree id="treeStatic" jstreetheme="default"
								openAllOnLoad="false"
								types="{
					'valid_children' : [ 'root' ],
					'types' : {
						'root' : {
							'icon' : { 
								'image' : '%{contextPath}/images/root.png' 
							},
							'valid_children' : [ 'folder', 'file' ]
						},
						'folder' : {
							'icon' : { 
								'image' : '%{contextPath}/images/folder.png' 
							},
							'valid_children' : [ 'folder', 'file' ]
						},
						'file' : {
							'icon' : { 
								'image' : '%{contextPath}/images/file.png' 
							},
							'valid_children' : [ 'none' ]
						}
				}
		}">
								<sjt:treeItem title="Struts2">
									<sjt:treeItem title="General">
										<sjt:treeItem title="Struts2"
											href="http://struts.apache.org/2.x/index.html" />
										<sjt:treeItem title="Struts2 @ Facebook"
											href="http://www.facebook.com/pages/Struts2-Users/103890046351798" />
									</sjt:treeItem>
									<sjt:treeItem title="Plugins">
										<sjt:treeItem title="Struts2 Plugins"
											href="https://cwiki.apache.org/S2PLUGINS/home.html" />
										<sjt:treeItem title="Struts2 jQuery Plugin"
											href="http://code.google.com/p/struts2-jquery/" />
										<sjt:treeItem title="Struts2 Full Hibernate Plugin"
											href="http://code.google.com/p/full-hibernate-plugin-for-struts2/" />
									</sjt:treeItem>
									<sjt:treeItem title="Blogs">
										<sjt:treeItem title="Struts2 jQuery News"
											href="http://www.jgeppert.com/category/java/struts2-jquery/" />
									</sjt:treeItem>
									<sjt:treeItem title="AJAX Links">
										<s:url id="ajax1" value="/ajax1.action" />
										<sjt:treeItem title="Ajax 1" href="%{ajax1}" targets="result" />
										<s:url id="ajax2" value="/ajax2.action" />
										<sjt:treeItem title="Ajax 2" href="%{ajax2}" targets="result"
											effect="highlight" effectDuration="2500" />
										<s:url id="ajax3" value="/ajax3.action" />
										<sjt:treeItem title="Ajax 3" href="%{ajax3}" targets="result"
											onBeforeTopics="beforeLink" onCompleteTopics="completeLink" />
										<s:url id="ajax4" value="/ajax4.action" />
										<sjt:treeItem title="Ajax 4" href="%{ajax4}" targets="result"
											effect="bounce" effectDuration="1000" />
									</sjt:treeItem>
								</sjt:treeItem>
							</sjt:tree>
						</s:div>
						<!--/.well -->
					</s:div>
					<!--/span-->
					<sj:div cssClass="span9">
						<sj:tabbedpanel id="localtabs" cssClass="list"
							heightStyle="content">
							<sj:tab id="tab1" target="tone" label="Local Tab One" />
							<sj:tab id="tab2" target="ttwo" label="Local Tab Two" />
							<sj:tab id="tab3" target="tthree" label="Local Tab Three" />
							<sj:tab id="tab4" target="tfour" label="Local Tab Four" />
							<div id="tone"></div>
							<div id="ttwo">Sed non urna. Donec et ante. Phasellus eu
								ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at
								aliquet laoreet, mauris turpis porttitor velit, faucibus
								interdum tellus libero ac justo. Vivamus non quam. In suscipit
								faucibus urna.</div>
							<div id="tthree">Nam enim risus, molestie et, porta ac,
								aliquam ac, risus. Quisque lobortis. Phasellus pellentesque
								purus in massa. Aenean in pede. Phasellus ac libero ac tellus
								pellentesque semper. Sed ac felis. Sed commodo, magna quis
								lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus
								venenatis dui.</div>
							<div id="tfour">Cras dictum. Pellentesque habitant morbi
								tristique senectus et netus et malesuada fames ac turpis
								egestas. Vestibulum ante ipsum primis in faucibus orci luctus et
								ultrices posuere cubilia Curae; Aenean lacinia mauris vel est.
								Suspendisse eu nisl. Nullam ut libero. Integer dignissim
								consequat lectus. Class aptent taciti sociosqu ad litora
								torquent per conubia nostra, per inceptos himenaeos.</div>
						</sj:tabbedpanel>
					</sj:div>

					<!--/span-->
				</s:div>
				<!--/row-->


				<div id="push"></div>
		</div>


		<div id="footer">
			<table width="100%" border="0" cellspacing="0" cellpadding="2"
				bgcolor="#FFFFCC">
				<tr>
					<td align="center">
						<p>
							<font size="-1">Copyright (c) 2007 MySite -
								http://www.mysite.com</font>
						</p>
					</td>
				</tr>
			</table>
		</div>
		</s:div>
</body>
</html>
