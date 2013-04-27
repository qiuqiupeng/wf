<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<html>
<head>

<title><s:text name="jsp.signin.projectName" /></title>
<s:include value="/WEB-INF/jsp/commons/meta.jsp" />

<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>



</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#"><s:text name="jsp.signin.projectName" /></a>
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
	
	<div class="container">
		<br> <br> <br> <br> <br>
		<form class="form-signin">
			<h2 class="form-signin-heading">
				<s:text name="jsp.signin.plsSignin" />
			</h2>
			<s:textfield name="user.userName" cssClass="input-block-level"
				placeholder="%{getText('jsp.signin.userName')}" />

			<s:password name="user.password" cssClass="input-block-level"
				placeholder="%{getText('jsp.signin.password')}" />

			<select title="帐套">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select> <label class="checkbox"> <input type="checkbox"
				value="remember-me"> Remember me
			</label>

			<s:submit name="signin" cssClass="btn btn-large btn-primary"
				value="%{getText('jsp.signin.btnSignin')}" label="Sign in" />

		</form>

	</div>
	<!-- /container -->

	<div id="footer" class="ui-layout-south">
		<table width="100%" border="0" cellspacing="0" cellpadding="2"
			bgcolor="#FFFFCC">
			<tr>
				<td align="center"><s:text name="jsp.signin.footer" /></td>
			</tr>
		</table>
	</div>


</body>
</html>
