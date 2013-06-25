<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
 <s:url id="remoteurl" action="json-account-data" namespace="/system"/>
    <sjg:grid
    	id="gridtable"
    	caption="Account List"
    	dataType="json"
    	href="%{remoteurl}"
    	pager="true"
    	gridModel="gridModel"
    	rowList="10,15,20"
    	rowNum="15"
    	rownumbers="true"
    >
    	<sjg:gridColumn name="accountId" index="accountId" title="account ID" formatter="integer" sortable="false"/>
    	<sjg:gridColumn name="name" index="name" title="Name" sortable="true"/>
    	<sjg:gridColumn name="nickName" index="nickName" title="NickName" sortable="false"/>
    </sjg:grid>