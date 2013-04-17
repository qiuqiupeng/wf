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

					<!--
<sj:accordion list="mylist" cssClass="nav nav-list"/>
-->
					<s:url var="urlajax1" action="userCheck.action" />
					<sj:accordion id="accordion" heightStyle="content" animate="true"
						cssClass="nav nav-list">
						<sj:accordionItem title="Mauris mauris ante">
							<sj:div id="divInAccrodionItem1" href="%{urlajax1}" />
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
				<sj:tabbedpanel id="localtabs" cssClass="list">
					<sj:tab id="tab1" target="tone" label="Local Tab One" />
					<sj:tab id="tab2" target="ttwo" label="Local Tab Two" />
					<sj:tab id="tab3" target="tthree" label="Local Tab Three" />
					<sj:tab id="tab4" target="tfour" label="Local Tab Four" />
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
			<p>&copy; Company 2013</p>
		</footer>

	</div>

</body>
</html>
