<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<html>
<head>
<title>WF demo: <sitemesh:write property='title' /></title>
<style type='text/css'>
/* Some CSS */
body {
	font-family: arial, sans-serif;
	background-color: #ffffcc;
}

h1,h2,h3,h4 {
	text-align: center;
	background-color: #ccffcc;
	border-top: 1px solid #66ff66;
}

.mainBody {
	padding: 10px;
	border: 1px solid #555555;
}

.disclaimer {
	text-align: center;
	border-top: 1px solid #cccccc;
	margin-top: 40px;
	color: #666666;
	font-size: smaller;
}
</style>

<jsp:include page="/WEB-INF/jsp/commons/meta.jsp" />
<sitemesh:write property='head' />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/commons/header.jsp" />

	<div class='ui-layout-center'>
		<sitemesh:write property='body' />
	</div>

	<jsp:include page="/WEB-INF/jsp/commons/footer.jsp" />


	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="js/jquery.js"></script>
	<script src="js/jquery.layout.js"></script>
	<SCRIPT type="text/javascript">
		$(document).ready(function() {
			$('body').layout({
				applyDefaultStyles : true
			});
		});
	</SCRIPT>
</body>
</html>