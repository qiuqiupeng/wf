<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div id="formResult" class="result ui-widget-content ui-corner-all">

	<s:url id="ajaxRefresh" value="/content/form.action" />
	<sj:a id="ajaxlinkRefresh" href="%{ajaxRefresh}" targets="content"
		indicator="indicator" button="true"  buttonIcon="ui-icon-refresh"
		buttonText="false">
		Run AJAX Refresh
	</sj:a>
	
	<s:url id="ajax" value="/content/form.action" />
	<sj:a id="ajaxlink" href="%{ajax}" targets="content"
		indicator="indicator" button="true"  buttonIcon="ui-icon-gear"
		buttonText="false">
		Run AJAX Action
	</sj:a>
</div>