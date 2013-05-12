<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>

<html>
<head>
<style type="text/css">
.column {
	width: 400px;
	height: 400px;
	float: left;
	padding-bottom: 100px;
}

.column_right {
	width: 400px;
	height: 400px;
	float: left;
	padding-bottom: 100px;
}

.column div {
	margin: 5px;
}

.column div div .ui-icon {
	float: right;
}
</style>
<script type="text/javascript">
	$(function() {
		$(".column div div .ui-icon").click(function() {
			$(this).toggleClass("ui-icon-minusthick");
			$(this).parents(".column div").find(".portlet-content").toggle();
		});
	});
	$.subscribe('onupdate', function(event, data) {
		var result = $("#sortableresult").empty();
		result.append("You move "
				+ $(event.originalEvent.ui.item).find(
						'.ui-widget-header > .title').html());
		result.append(' from ' + $(event.originalEvent.ui.sender).attr('id'));
		result.append(' to '
				+ $(event.originalEvent.ui.item).parent().attr('id'));
	});
</script>
</head>
<body>

	<sj:div id="column1" cssClass="column" sortable="true"
		sortableConnectWith=".column" sortablePlaceholder="ui-state-highlight"
		sortableForcePlaceholderSize="true"
		sortableHandle="div.ui-widget-header" sortableCursor="crosshair"
		sortableOnUpdateTopics="onupdate">

		<div
			class="ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="ui-widget-header ui-corner-all">
				<span class="title">Feeds</span><span
					class="ui-icon ui-icon-plusthick"></span>
			</div>
			<div class="portlet-content">Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit<br>
				Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit<br>
				Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit<br>
				Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit<br>
				Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit<br>
				Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit<br>
				Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit</div>
		</div>

		<div
			class="ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="ui-widget-header ui-corner-all">
				<span class="title">News</span><span
					class="ui-icon ui-icon-plusthick"></span>
			</div>
			<div class="portlet-content">Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit</div>
		</div>

	</sj:div>


	<sj:div id="column2" cssClass="column" sortable="true"
		sortableConnectWith=".column" sortablePlaceholder="ui-state-highlight"
		sortableForcePlaceholderSize="true"
		sortableHandle="div.ui-widget-header" sortableCursor="crosshair"
		sortableOnUpdateTopics="onupdate">

		<div
			class="ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="ui-widget-header ui-corner-all">
				<span class="title">Links</span><span
					class="ui-icon ui-icon-plusthick"></span>
			</div>
			<div class="portlet-content">Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit</div>
		</div>

		<div
			class="ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="ui-widget-header ui-corner-all">
				<span class="title">Images</span><span
					class="ui-icon ui-icon-plusthick"></span>
			</div>
			<div class="portlet-content">Lorem ipsum dolor sit amet,
				consectetuer adipiscing elit</div>
		</div>

	</sj:div>



</body>
</html>


