<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<sjt:tree id="treeStatic" openAllOnLoad="false"
	types="{
					'valid_children' : [ 'root' ],
					'types' : {
						'root' : {
							'icon' : { 
								'image' : '%{contextPath}/images/root.png' 
							},
							'valid_children' : [ 'folder', 'file' ]
						},
						'folder' : {
							'icon' : { 
								'image' : '%{contextPath}/images/folder.png' 
							},
							'valid_children' : [ 'folder', 'file' ]
						},
						'file' : {
							'icon' : { 
								'image' : '%{contextPath}/images/file.png' 
							},
							'valid_children' : [ 'none' ]
						}
				}
		}">
	<sjt:treeItem title="General"
		href="http://struts.apache.org/2.x/index.html" type="file" />

	<s:url var="ajax3" value="/content/form.action" />
	<sjt:treeItem title="Ajax 3" href="%{ajax3}" targets="content"
		onBeforeTopics="beforeLink" onCompleteTopics="completeLink"
		type="file" />

	<sjt:treeItem title="帐号列表" type="folder">
		<s:url var="ajaxAccountList" value="/system/account-list" />
		<sjt:treeItem title="Ajax 1" href="%{ajaxAccountList}" targets="content"
			type="file" />
	</sjt:treeItem>
	<sjt:treeItem title="AJAX" type="folder">
		<s:url var="ajax1" value="/system/index" />
		<sjt:treeItem title="Ajax 1" href="%{ajax1}" targets="content"
			type="file" />
		<s:url var="ajax2" value="/system/welcome.action" />
		<sjt:treeItem title="Ajax 2" href="%{ajax2}" targets="content"
			effect="highlight" effectDuration="2500" type="file" />
		<s:url var="ajax3" value="/content/form.action" />
		<sjt:treeItem title="Ajax 3" href="%{ajax3}" targets="content"
			onBeforeTopics="beforeLink" onCompleteTopics="completeLink"
			type="file" />
		<s:url var="ajax4" value="/system/welcome.action" />
		<sjt:treeItem title="Ajax 4" href="%{ajax4}" menuIcon="ui-icon-gear"
			targets="content" effect="bounce" effectDuration="1000" type="file" />
	</sjt:treeItem>
	<sjt:treeItem title="AJAX Links" type="folder">
		<s:url id="ajax1" value="/ajax1.action" />
		<sjt:treeItem title="Ajax 1" href="%{ajax1}" targets="content"
			type="file" />
		<s:url id="ajax2" value="/ajax2.action" />
		<sjt:treeItem title="Ajax 2" href="%{ajax2}" targets="content"
			effect="highlight" effectDuration="2500" type="file" />
		<s:url id="ajax3" value="/ajax3.action" />
		<sjt:treeItem title="Ajax 3" href="%{ajax3}" targets="content"
			onBeforeTopics="beforeLink" onCompleteTopics="completeLink"
			type="file" />
		<s:url id="ajax4" value="/ajax4.action" />
		<sjt:treeItem title="Ajax 4" href="%{ajax4}" targets="content"
			effect="bounce" effectDuration="1000" type="file" />
	</sjt:treeItem>
	<sjt:treeItem title="系统管理"
		href="http://struts.apache.org/2.x/index.html" type="file" />
</sjt:tree>