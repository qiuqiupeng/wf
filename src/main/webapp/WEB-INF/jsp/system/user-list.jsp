<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<html>
<head>
<%@ include file="/WEB-INF/jsp/commons/csslibs.jsp"%>

<script type="text/javascript">
	$.subscribe('getselectedids', function(event, data) {
		var s;
		s = $("#gridtable").jqGrid('getGridParam', 'selarrrow');
		$("#a_user_list_del").click();
	});

	$.subscribe('openrowselect', function(event, data) {
		$("#rowid").val(event.originalEvent.rowid);
		$("#a_user_list_show").click();
	});
</script>

</head>
<body>

	<div class="breadcrumbs" id="breadcrumbs">
		<ul class="breadcrumb">
			<li><i class="icon-home home-icon"></i> <a href="#">主页</a></li>
			<li class="active">欢迎</li>
		</ul>
		<!-- .breadcrumb -->
	</div>
	<s:form id="form" action="" theme="simple"
		cssClass="form-horizontal no-margin">
		<s:hidden id="rowid" name="rowid" />
		<div class="page-content">
			<div class="row">
				<div class="col-xs-12 col-sm-12 widget-container-span">
					<div class="widget-box transparent">
						<div class="widget-header">
							<s:url id="action_user_list_show" action="/user-edit"
								namespace="/system" />
							<sj:a id="a_user_list_show" targets="content"
								href="%{action_user_list_show}" formIds="form" />
							<!-- 新增 -->
							<s:url id="action_user_list_new" action="user-edit"
								namespace="/system" />
							<sj:a targets="content" href="%{action_user_list_new}">
								<span class="btn btn-info btn-xs tooltip-info"
									data-rel="tooltip" data-placement="bottom" title="新增"><i
									class="icon-plus"></i> 新增</span>
							</sj:a>
							<!-- 批量删除 -->
							<s:url id="action_user_list_del" action="/user-list!delete"
								namespace="/system" />
							<sj:a id="a_user_list_del" targets="content"
								href="%{action_user_list_del}" formIds="form" />
							<sj:a onClickTopics="getselectedids" href="#">
								<span class="btn btn-info btn-xs tooltip-info"
									data-rel="tooltip" data-placement="bottom" title="批量删除"><i
									class="icon-remove"></i> 删除</span>
							</sj:a>

							<div class="widget-toolbar">
								<a href="#" data-action="close"> <i class="icon-remove"></i>
								</a>
							</div>

						</div>

						<div class="widget-body">
							<s:url id="remoteurl" action="user-data-provider"
								namespace="/json" />
							<sjg:grid id="gridtable" caption="用户列表" dataType="json"
								href="%{remoteurl}" pager="true" gridModel="gridModel"
								height="320" shrinkToFit="false" rowList="10,15,20" rowNum="15"
								viewrecords="true" rownumbers="true" resizable="true"
								multiselect="true" onDblClickRowTopics="openrowselect"
								autowidth="true" loadingText="数据载入中">
								<sjg:gridColumn name="id" index="id" title="ID" sortable="false"
									hidden="true" />
								<sjg:gridColumn name="name" index="name" title="Name"
									sortable="true" />
								<sjg:gridColumn name="number" index="number" title="number"
									sortable="false" />
								<sjg:gridColumn name="email" index="email" title="email"
									sortable="false" />
							</sjg:grid>
						</div>
					</div>
				</div>
			</div>
		</div>







	</s:form>
</body>
</html>