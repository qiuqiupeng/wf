<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>



<div class="page-header">
	<div class="pull-left">
		<h2>用户配置</h2>
	</div>
	<div class="pull-right">
		<ul class="stats">
			<li class="color-first"><span class="fs1" data-icon="&#xe0b3;"></span>
				<div class="details">
					<span class="big">12</span> <span>未处理任务</span>
				</div></li>
		</ul>
	</div>
	<div class="clearfix"></div>
</div>

<div class="row-fluid">
	<div class="span12">
		<div class="widget no-margin">
			<div class="widget-header">
				<div class="title">
					<span class="fs1" data-icon="&#xe075;"></span> 编辑配置
				</div>
			</div>
			<div class="widget-body">
				<div class="row-fluid">
					<div class="span12">
						<form class="form-horizontal no-margin">
							<div class="span12">
								<h5>登录 信息</h5>
								<hr>
								<div class="span6">
									<div class="control-group">
										<label class="control-label"> 用户名 </label>
										<div class="controls">
											<s:textfield name="userName"
												class="inputText editable editable-click" />

										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Email ID </label>
										<div class="controls">
											<a href="#" data-type="email" data-pk="1"
												data-original-title="Click here to edit your email"
												class="inputText editable editable-click">
												honey@youmail.com </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Password </label>
										<div class="controls">
											<a href="#" id="password" data-type="password" data-pk="1"
												data-original-title="Click here to edit your password"
												class="inputText editable editable-click"> ****** </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Confirm Password </label>
										<div class="controls">
											<a href="#" id="confirmPassword" data-type="password"
												data-pk="1"
												data-original-title="Click here to confirm your password"
												class="inputText editable editable-click"> ****** </a>
										</div>
									</div>
								</div>
								<div class="span2">
									<div class="thumbnail">
										<img alt="300x200" src="img/profile.png">
										<div class="caption">
											<a href="#" data-type="text" data-pk="1"
												data-original-title="Edit your Nick Name"
												class="editable editable-click inputText"
												style="margin-bottom: 10px;"> Srinu Basava </a>
											<p class="no-margin">
												<a href="#" class="btn btn-info"> Edit </a> <a href="#"
													class="btn"> Cancel </a>
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="span12">
								<br />
								<h5>个人 信息</h5>
								<hr>
								<div class="span6">
									<div class="control-group">
										<label class="control-label"> First Name </label>
										<div class="controls">
											<a href="#" id="firstName" data-type="text" data-pk="1"
												data-original-title="Click here to edit your first name"
												class="inputText editable editable-click"> Srinu </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Last Name </label>
										<div class="controls">
											<a href="#" id="lastName" data-type="text" data-pk="1"
												data-original-title="Click here to edit your first name"
												class="inputText editable editable-click"> Basava </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Location </label>
										<div class="controls">
											<a href="#" id="location" data-type="text" data-pk="1"
												data-original-title="Click here to edit your first name"
												class="inputText editable editable-click"> Banglore,
												India. </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Website URL </label>
										<div class="controls">
											<a href="#" id="url" data-type="url" data-pk="1"
												data-original-title="Click here to edit your first name"
												class="inputText editable editable-click">
												http:www.abcxyz.com </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> Tags </label>
										<div class="controls">
											<a href="#" id="tags" data-type="select2" data-pk="1"
												data-original-title="Enter tags"
												class="editable editable-click"> Html, CSS, Javascript </a>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"> About </label>
										<div class="controls">
											<a data-original-title="Write about your self"
												data-placeholder="Your comments here..." data-pk="1"
												data-type="textarea" id="aboutMe" href="#"
												class="inputTextArea editable editable-click"
												style="margin-bottom: 10px;"> About me :) </a>
										</div>
									</div>
								</div>

							</div>
							<div class="span12">
								<div class="form-actions no-margin">
									<button type="submit" class="btn btn-info">Save
										changes</button>
									<button type="button" class="btn">Cancel</button>
								</div>
							</div>


						</form>
					</div>


				</div>
			</div>
		</div>
	</div>
</div>
