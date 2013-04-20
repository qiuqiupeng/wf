<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<html>
<head>
<sj:head />
<title>WF demo</title>

<!-- Le styles -->
<link href="css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) { /* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<link href="css/bootstrap-responsive.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->



</head>

<body>

	<jsp:include page="/WEB-INF/jsp/commons/meta.jsp" />

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#">Project name</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Logged in as <a href="#" class="navbar-link">Username</a>
					</p>
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<s:set id="contextPath"
						value="#request.get('javax.servlet.forward.context_path')" />
					<!--
<sj:accordion list="mylist" cssClass="nav nav-list"/>
-->

					<sj:accordion id="accordion" heightStyle="auto" animate="true"
						cssClass="nav nav-list" openOnMouseover="true">
						<sj:accordionItem title="Mauris mauris ante">
							<sjt:tree id="treeStatic" jstreetheme="default"
								openAllOnLoad="true"
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
						</sj:accordionItem>
						<sj:accordionItem title="Sed non urna">
                Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit 
        </sj:accordionItem>
						<sj:accordionItem title="Nam enim risus">
                Nam enim risus, molestie et, porta ac, aliquam 
        </sj:accordionItem>
					</sj:accordion>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->
			<sj:div cssClass="span9">
				<sj:tabbedpanel id="localtabs" cssClass="list" heightStyle="content">
					<sj:tab id="tab1" target="tone" label="Local Tab One" />
					<sj:tab id="tab2" target="ttwo" label="Local Tab Two" />
					<sj:tab id="tab3" target="tthree" label="Local Tab Three" />
					<sj:tab id="tab4" target="tfour" label="Local Tab Four" />
					<div id="tone"></div>
					<div id="ttwo">Sed non urna. Donec et ante. Phasellus eu
						ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at
						aliquet laoreet, mauris turpis porttitor velit, faucibus interdum
						tellus libero ac justo. Vivamus non quam. In suscipit faucibus
						urna.</div>
					<div id="tthree">Nam enim risus, molestie et, porta ac,
						aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus
						in massa. Aenean in pede. Phasellus ac libero ac tellus
						pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia
						ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis
						dui.</div>
					<div id="tfour">Cras dictum. Pellentesque habitant morbi
						tristique senectus et netus et malesuada fames ac turpis egestas.
						Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
						posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse
						eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
						Class aptent taciti sociosqu ad litora torquent per conubia
						nostra, per inceptos himenaeos.</div>
				</sj:tabbedpanel>
			</sj:div>

			<!--/span-->
		</div>
		<!--/row-->

		<footer>
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
		</footer>
	</div>

	<script src="js/showcase.js"></script>

</body>
</html>
