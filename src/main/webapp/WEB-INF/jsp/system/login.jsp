<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<sj:head jqueryui="true" jquerytheme="pepper-grinder" />
<sb:head includeScripts="true" includeScriptsValidation="false"
	includeStylesResponsive="true" />

<title>演示系统--登录</title>
<style type="text/css">
.container {
	margin-top: 8em;
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

/* Set the fixed height of the footer here */
#push,#footer {
	height: 60px;
}

#footer {
	background-color: #f5f5f5;
	text-align: center !important;
	margin-bottom: 。8px;
}
</style>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a data-target=".nav-collapse" data-toggle="collapse"
					class="btn btn-navbar"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a href="#" class="brand"> DEMO SYSTEM 
				</a>
			</div>
		</div>
		<div class="container">
			<div class="row-fluid">
				<div class="span6">
					
				</div>

				<div class="span6">
					<form class="form-signin" action="main">
						<h2 class="form-signin-heading">
							<s:text name="jsp.signin.plsSignin" />
						</h2>
						<s:textfield name="user.userName" cssClass="input-block-level"
							placeholder="%{getText('jsp.signin.userName')}" />

						<s:password name="user.password" cssClass="input-block-level"
							placeholder="%{getText('jsp.signin.password')}" />

						<input type="checkbox"
							value="remember-me"> Remember me
						</label>

						<s:submit name="signin" cssClass="btn btn-large btn-primary"
							value="%{getText('jsp.signin.btnSignin')}" label="Sign in" />

					</form>
				</div>
			</div>
		</div>
		<div id="footer">
			<hr class="soften">
			<table width="100%" border="0" cellspacing="0" cellpadding="2"
				bgcolor="#FFFFCC">
				<tr>
					<td align="center"><s:text name="jsp.signin.footer" /></td>
				</tr>
			</table>
		</div>
</body>
</html>