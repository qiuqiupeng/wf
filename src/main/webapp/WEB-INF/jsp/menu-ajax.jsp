<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<ul>
	<li><a href="index"> <span class="fs1" data-icon="&#xe0a0;"></span>欢迎
	</a></li>


	<li><a href="gallery"> <span class="fs1" data-icon="&#xe00d;"></span>
			基础资料
	</a></li>

	<li><a href="forms"> <span class="fs1" data-icon="&#xe0b8;"></span>
			单据
	</a>
		<ul>
			<li><a href="forms">Basic Forms</a></li>
			<li><a href="extended-forms">Extended Forms</a></li>
			<li><a href="form-wizards">Form Wizards</a></li>
		</ul></li>
	<li><a href="reports"> <span class="fs1" data-icon="&#xe097;"></span>
			报表
	</a></li>
	<li><a href="graphs"> <span class="fs1" data-icon="&#xe096;"></span>
			图片
	</a>
		<ul>
			<li><a href="graphs">Flot Charts</a></li>
			<li><a href="google-charts">Google Charts</a></li>
			<li><a href="animated-charts">Animated Charts</a></li>
		</ul></li>
	<li><a href="ui-elements"> <span class="fs1"
			data-icon="&#xe0a5;"></span> UI Lab
	</a>
		<ul>
			<li><a href="clients-list">Clients List</a></li>
			<li><a href="ui-elements">General Elements</a></li>
			<li><a href="messages">Messages</a></li>
			<li><a href="timeline">Timeline</a></li>
			<li><a href="pricing">Pricing Plans</a></li>
			<li><a href="grid">Grid Layout</a></li>
			<li><a href="icons">Buttons &amp; Icons</a></li>
			<li><a href="typography">Typography</a></li>
			<li><a href="layout">Blank Page</a></li>
		</ul></li>
	<li><a href="tables"> <span class="fs1" data-icon="&#xe14a;"></span>
			表格
	</a>
		<ul>
			<li><a href="tables">Static Tables</a></li>
			<li><a href="dynamic-tables">Dynamic Tables</a></li>
		</ul></li>

	<li><s:url id="invoice" value="/invoice.action" /> <sj:a
			id="link1" href="%{invoice}" targets="content">
			<span class="fs1" data-icon="&#xe0aa;"></span> 其他
    </sj:a>


		<ul>
			<li><s:url id="invoice" value="/invoice.action" /> <sj:a
					id="link2" href="%{invoice}" targets="content">
    Invoice</sj:a></li>
			<li><a href="calendar">Calendar</a></li>
			<li><a href="profile">Profile</a></li>
			<li><a href="error">404 Error</a></li>
			<li><a href="faq">Faq</a></li>
			<li><a href="login">Login</a></li>
		</ul></li>
</ul>

<div class="clearfix"></div>