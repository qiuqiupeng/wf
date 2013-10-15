<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<script type="text/javascript">
<!--
	$.subscribe('openURL', function(event, data) {
		var s;
		s = $(data).attr("id");
		$("#echo").val(s);
		$("#formSubmit").click();
	});
//-->
</script>

<s:form id="form" action="echo" theme="simple" cssClass="yform">
	<s:url id="echoAction" action="echo" />
	<s:hidden id="echo" name="echo" />
	<sj:submit id="formSubmit" href="%{echoAction}" targets="content"
		cssStyle="display:none;"/>


	<ul class="nav nav-pills">
		<li class="dropdown active"><a href="forms"
			class="dropdown-toggle btn-xs" data-toggle="dropdown"> <span class="fs1"
				data-icon="&#xe0b8;"></span> 欢迎
		</a>

			<ul class="dropdown-menu">


				<li><sj:a onClickTopics="openURL" id="profile1">
						<span class="fs1" data-icon="&#xe0b8;"></span>用户列表</sj:a></li>

			</ul></li>
		<li class="dropdown active"><a href="forms"
			class="dropdown-toggle btn-xs" data-toggle="dropdown"> <span class="fs1"
				data-icon="&#xe0b8;"></span> 消息中心
		</a>

			<ul class="dropdown-menu">
				<li><a href="forms">Basic Forms</a></li>
				<li><a href="extended-forms">Extended Forms</a></li>
				<li><a href="form-wizards">Form Wizards</a></li>
			</ul></li>
		<li class="dropdown active"><a href="forms"
			class="dropdown-toggle btn-xs" data-toggle="dropdown"> <span class="fs1"
				data-icon="&#xe0b8;"></span> 单据3
		</a>

			<ul class="dropdown-menu">
				<li><a href="forms">Basic Forms</a></li>
				<li><a href="extended-forms">Extended Forms</a></li>
				<li><a href="form-wizards">Form Wizards</a></li>
			</ul></li>
	</ul>


</s:form>


<button class="btn dropdown-toggle sr-only" type="button" id="dropdownMenu1" data-toggle="dropdown">
    Dropdown
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
    <li role="presentation" class="divider"></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
  </ul>


<div class="clearfix"></div>