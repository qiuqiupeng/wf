<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-jquery-ui-theme.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-base-styles.jsp"%>
<title>登录页</title>
<script>
		var logon = ${not empty user};
		if (logon) {
			location.href = '${ctx}/main/index';
		}
		
		$(function() {
		$('button').button({
			icons: {
				primary: 'ui-icon-key'
			}
		});
	});
	</script>

<style type="text/css">
#footer {
	text-align: center;
}
</style>

<script src="${ctx }/js/common/jquery.js" type="text/javascript"></script>
<script src="${ctx }/js/common/plugins/bootstrap/bootstrap.min.js"
	type="text/javascript"></script>
</head>

<body>
	<div class="container">
		<c:if test="${not empty param.error}">
			<div class="alert alert-error">
				<strong>提示：</strong>用户名或密码错误！！！
			</div>
		</c:if>
		<c:if test="${not empty param.timeout}">
			<div class="alert alert-block">
				<strong>提示：</strong>未登陆或超时！！！
			</div>
		</c:if>
		<div class="container-fluid" style="margin-top: 3em;">
			<div class="row-fluid">
				<div class="span4">
					<img src="${ctx}/images/activiti_logo.png" />
				</div>
				<div class="span8">
					<h2>工作流引擎Activiti演示</h2>
				</div>
			</div>
			<hr class="soften">
				<div class="row-fluid">
					<div class="span6">
						<table class="table table-striped">
							<caption>
								<strong>用户列表</strong>(密码：000000)
							</caption>
							<tr>
								<th>用户名</th>
								<th>角色</th>
							</tr>
							<tr>
								<td>admin</td>
								<td>管理员、用户</td>
							</tr>
							<tr>
								<td>kafeitu</td>
								<td>用户</td>
							</tr>
							<tr>
								<td>hruser</td>
								<td>人事、用户</td>
							</tr>
							<tr>
								<td>leaderuser</td>
								<td>部门经理、用户</td>
							</tr>
						</table>
					</div>

					<div class="span6">
						<form action="${ctx }/user/logon" class="form-horizontal">
							<div class="control-group">
								<label class="control-label" for="username">用户名：</label>
								<div class="controls">
									<input type="text" id="username" name="username"
										placeholder="用户名">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="password">密码：</label>
								<div class="controls">
									<input type="password" id="password" name="password"
										placeholder="密码">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="btn btn-large">
										<i class="icon-user icon-black"></i>登&nbsp;&nbsp;陆
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<hr class="soften">
					<div id="footer">
						<a href="http://www.kafeitu.me">www.kafeitu.me</a> By <a
							href="http://weibo.com/kafeituzi">@咖啡兔</a> <span
							class="copyright">©2012</span> <span class="version"
							style="padding-left: .5em">版本：</span>
					</div>
		</div>
	</div>
</body>
</html>
