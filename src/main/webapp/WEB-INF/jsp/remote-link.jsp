<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<div id="result" class="result ui-widget-content ui-corner-all">Click on the link bellow.</div>
<s:url var="ajax" value="layout"/>

<sj:a id="ajaxlink"
      href="%{ajax}"
      targets="result"
      button="true"
      buttonIcon="ui-icon-refresh"
		>
	Run AJAX Action
</sj:a>
