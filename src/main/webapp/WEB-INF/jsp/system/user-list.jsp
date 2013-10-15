<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<html>
<head>

<sj:head jqueryui="true" locale="cn" />


<script type="text/javascript">
	$.subscribe('getselectedids', function(event, data) {
		var s;
		s = $("#gridtable").jqGrid('getGridParam', 'selarrrow');
		$("#rowid").val(s);
		$("#a_user_list_del").click();
	});

	$.subscribe('openrowselect', function(event, data) {
		$("#rowid").val(event.originalEvent.rowid);
		$("#a_user_list_show").click();
	});
</script>

</head>
<body>
	<s:form id="form" action="" theme="simple"
		cssClass="form-horizontal no-margin">
		<s:hidden id="rowid" name="rowid" />
			<div class="panel-heading">



				<!-- 操作框 开始 -->
				<div class="col-md-6 pull-right">
					<div class="widget no-margin">
						<div class="widget-body">
							<!-- 双击行打开 -->
							<s:url id="action_user_list_show" action="/user-edit"
								namespace="/system" />
							<sj:a id="a_user_list_show" targets="content"
								href="%{action_user_list_show}" formIds="form" />
							<!-- 新增 -->
							<s:url id="action_user_list_new" action="user-edit"
								namespace="/system" />
							<sj:a targets="content" cssClass="btn btn-success btn-sm "
								href="%{action_user_list_new}">
								<span class="fs1" data-icon="&#xe102;"></span> 新增</sj:a>
							<!-- 批量删除 -->
							<s:url id="action_user_list_del" action="/user-list!delete"
								namespace="/system" />
							<sj:a id="a_user_list_del" targets="content"
								href="%{action_user_list_del}" formIds="form" />
							<sj:a cssClass="btn btn-warning hidden-tablet btn-sm "
								onClickTopics="getselectedids">
								<span class="fs1" data-icon="&#xe0fd;"></span> 删除</sj:a>

							<button class="btn btn-warning input-top-margin btn-sm "
								type="button">
								<span class="fs1" data-icon="&#xe14a;"></span> 刷新
							</button>
							<button class="btn btn-danger input-top-margin btn-sm "
								type="button">
								<span class="fs1" data-icon="&#xe087;"></span> 修改密码
							</button>
							<button class="btn btn-primary input-top-margin btn-sm "
								type="button">
								<span class="fs1" data-icon="&#xe08a;"></span> 解锁
							</button>
							<div class="btn-group input-top-margin btn-sm ">
								<button class="btn btn-info">其他</button>
								<button data-toggle="dropdown"
									class="btn btn-info dropdown-toggle">
									<span class="caret"> </span>
								</button>
								<ul class="dropdown-menu pull-right btn-sm ">
									<li><a href="#" data-original-title=""> Action </a></li>
									<li><a href="#" data-original-title=""> Another action
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- 操作框 结束-->
				<div class="clearfix"></div>
			</div>

			<div class="panel-body">
				<s:url id="remoteurl" action="user-data-provider" namespace="/json" />
				<sjg:grid id="gridtable" caption="用户列表" dataType="json"
					href="%{remoteurl}" pager="true" gridModel="gridModel" height="350"
					shrinkToFit="false" rowList="10,15,20" rowNum="15"
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
	</s:form>
</body>
</html>