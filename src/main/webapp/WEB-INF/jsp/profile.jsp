<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>


<s:form id="form" action="echo" theme="simple"
	cssClass="form-horizontal no-margin">
	<div class="page-header">
		<div class="pull-left">
			<h2>用户配置</h2>
		</div>


		<!-- 操作框 开始 -->
		<div class="btn-group input-top-margin pull-right">
			<button class="btn btn-info">操作</button>
			<button data-toggle="dropdown" class="btn btn-info dropdown-toggle">
				<span class="caret"> </span>
			</button>
			<ul class="dropdown-menu pull-right">
				<li><a href="#" data-original-title=""> <span class="fs1"
						data-icon="&#xe024;"></span> 新增
				</a></li>
				<li><a href="#" data-original-title=""> <span class="fs1"
						data-icon="&#xe060;"></span> 保存
				</a></li>
				<li><a href="#" data-original-title=""> <span class="fs1"
						data-icon="&#xe0fa;"></span> 删除
				</a></li>
				<li><s:url id="profile" value="/profile!save.action" /> <sj:a
						id="ajaxformlink" formIds="form" targets="content"
						href="%{profile}">
      测试
    </sj:a></li>
			</ul>
		</div>
		<!-- 操作框 结束-->
		<div class="clearfix"></div>
	</div>

	<div class="row-fluid">
		<div class="span12">
			<div class="widget no-margin">
				<s:if test="hasActionMessages()">
					<div class="alert alert-block alert-success fade in">
						<button data-dismiss="alert" class="close" type="button">
							×</button>
						<h4 class="alert-heading">成功!</h4>
						<p>
							<s:label name="messages" />
						</p>
					</div>
				</s:if>

				<div class="widget-header">
					<div class="title">
						<span class="fs1" data-icon="&#xe075;"></span> 编辑配置
					</div>
				</div>
				<div class="widget-body">
					<div class="row-fluid">
						<div class="span12">
							<div class="span12">
								<h5>登录 信息</h5>
								<hr>
								<div class="span6">
									<div class="control-group">
										<label class="control-label"> 用户名 </label>
										<div class="controls controls-row">
											<s:textfield name="userName" cssClass="span12" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Email ID </label>
										<div class="controls controls-row">
											<s:textfield name="email" cssClass="span12" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> 密码 </label>
										<div class="controls controls-row">
											<s:password name="password" cssClass="span12" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> 确认密码 </label>
										<div class="controls controls-row">
											<s:password name="repassword" cssClass="span12" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> 姓名 </label>
										<div class="controls controls-row">
											<s:textfield name="name" cssClass="span12" />
										</div>
									</div>
								</div>
								<div class="span2 offset3">
									<div class="thumbnail">
										<img alt="300x200" src="img/profile.png">
										<div class="caption">
											<p class="no-margin">
												<a href="#" class="btn btn-info"> Edit </a> <a href="#"
													class="btn"> Cancel </a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</s:form>