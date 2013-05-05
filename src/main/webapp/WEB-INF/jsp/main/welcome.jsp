<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<sj:head jqueryui="true" jquerytheme="redmond" />
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-base-styles.jsp"%>
<%@ include file="/WEB-INF/jsp/commons/include-custom-styles.jsp"%>

<script type="text/javascript">
	$.subscribe('ondrop', function(event, data) {
		$(event.originalEvent.ui.droppable).addClass('ui-state-highlight')
				.find('p').html(
						$(event.originalEvent.ui.draggable).attr('id')
								+ ' dropped!');
		$(event.originalEvent.ui.draggable).find('p').html('I was dragged!');
	});
</script>
</head>
<body>

	<div class="draganddrop" style="width: 100%; height: 500px;">
		<a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid1" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标1
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid2" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标2
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid3" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标3
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid4" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标4
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid5" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<img src="${ctx}/images/logo.png" class="img-circle">图标5 
			</sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid6" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<img src="${ctx}/images/activiti_logo.png" class="img-circle">图标6
				
			</sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid7" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标1
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid8" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标2
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid9" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标3
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid10" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<i class="icon-wrench icon-black"></i>图标4
        </sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid11" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<img src="${ctx}/images/logo.png" class="img-circle">图标5 
			</sj:div></a> <a href="${ctx}/workflow/process-list"><sj:div
				id="draggablenonvalid12" draggable="true"
				cssClass="noaccept ui-widget-content ui-corner-all"
				cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
				<img src="${ctx}/images/activiti_logo.png" class="img-circle">图标6
				
			</sj:div></a>

	</div>
</body>
</html>