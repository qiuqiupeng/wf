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
			class="dropdown-toggle" data-toggle="dropdown"> <span class="fs1"
				data-icon="&#xe0b8;"></span> 欢迎
		</a>

			<ul class="dropdown-menu">
				<li><a href="forms">Basic Forms</a></li>
				<li><a href="extended-forms">Extended Forms</a></li>
				<li><s:url id="echo1" value="echo">
					</s:url> <sj:a id="echotest" href="%{echo1}">Form Wizards</sj:a></li>


				<li><sj:a onClickTopics="openURL" id="profile1">
						<span class="fs1" data-icon="&#xe0b8;"></span>test</sj:a></li>






			</ul></li>
		<li class="dropdown active"><a href="forms"
			class="dropdown-toggle" data-toggle="dropdown"> <span class="fs1"
				data-icon="&#xe0b8;"></span> 消息中心
		</a>

			<ul class="dropdown-menu">
				<li><a href="forms">Basic Forms</a></li>
				<li><a href="extended-forms">Extended Forms</a></li>
				<li><a href="form-wizards">Form Wizards</a></li>
			</ul></li>
		<li class="dropdown active"><a href="forms"
			class="dropdown-toggle" data-toggle="dropdown"> <span class="fs1"
				data-icon="&#xe0b8;"></span> 单据3
		</a>

			<ul class="dropdown-menu">
				<li><a href="forms">Basic Forms</a></li>
				<li><a href="extended-forms">Extended Forms</a></li>
				<li><a href="form-wizards">Form Wizards</a></li>
			</ul></li>
	</ul>


</s:form>





<div class="clearfix"></div>