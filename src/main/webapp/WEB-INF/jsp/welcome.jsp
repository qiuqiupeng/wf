<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>



<div class="breadcrumbs" id="breadcrumbs">
	<script type="text/javascript">
		try {
			ace.settings.check('breadcrumbs', 'fixed');
		} catch (e) {
		}
	</script>

	<ul class="breadcrumb">
		<li><i class="icon-home home-icon"></i> <a href="#">开始</a></li>
		<li class="active">我的驾驶舱</li>
	</ul>
	<!-- .breadcrumb -->

	<div class="nav-search" id="nav-search">
		<form class="form-search">
			<span class="input-icon"> <input type="text"
				placeholder="Search ..." class="nav-search-input"
				id="nav-search-input" autocomplete="off"> <i
				class="icon-search nav-search-icon"></i>
			</span>
		</form>
	</div>
	<!-- #nav-search -->
</div>

<div class="page-content">
	<div class="page-header">
		<h1>
			我的驾驶舱 <small> <i class="icon-double-angle-right"></i> 各工作看板
			</small>
		</h1>
	</div>
	<!-- /.page-header -->

	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->

			<div class="row">
				<div class="space-6"></div>

				<div class="col-sm-7 infobox-container">
					<div class="infobox infobox-green  ">
						<div class="infobox-icon">
							<i class="icon-comments"></i>
						</div>

						<div class="infobox-data">
							<span class="infobox-data-number">32</span>
							<div class="infobox-content">comments + 2 reviews</div>
						</div>
						<div class="stat stat-success">8%</div>
					</div>

					<div class="infobox infobox-blue  ">
						<div class="infobox-icon">
							<i class="icon-twitter"></i>
						</div>

						<div class="infobox-data">
							<span class="infobox-data-number">11</span>
							<div class="infobox-content">new followers</div>
						</div>

						<div class="badge badge-success">
							+32% <i class="icon-arrow-up"></i>
						</div>
					</div>

					<div class="infobox infobox-pink  ">
						<div class="infobox-icon">
							<i class="icon-shopping-cart"></i>
						</div>

						<div class="infobox-data">
							<span class="infobox-data-number">8</span>
							<div class="infobox-content">new orders</div>
						</div>
						<div class="stat stat-important">4%</div>
					</div>

					<div class="infobox infobox-red  ">
						<div class="infobox-icon">
							<i class="icon-beaker"></i>
						</div>

						<div class="infobox-data">
							<span class="infobox-data-number">7</span>
							<div class="infobox-content">experiments</div>
						</div>
					</div>

					<div class="infobox infobox-orange2  ">
						<div class="infobox-chart">
							<span class="sparkline"
								data-values="196,128,202,177,154,94,100,170,224"></span>
						</div>

						<div class="infobox-data">
							<span class="infobox-data-number">6,251</span>
							<div class="infobox-content">pageviews</div>
						</div>

						<div class="badge badge-success">
							7.2% <i class="icon-arrow-up"></i>
						</div>
					</div>

					<div class="infobox infobox-blue2  ">
						<div class="infobox-progress">
							<div class="easy-pie-chart percentage" data-percent="42"
								data-size="46">
								<span class="percent">42</span>%
							</div>
						</div>

						<div class="infobox-data">
							<span class="infobox-text">traffic used</span>

							<div class="infobox-content">
								<span class="bigger-110">~</span> 58GB remaining
							</div>
						</div>
					</div>

					<div class="space-6"></div>

					<div class="infobox infobox-green infobox-small infobox-dark">
						<div class="infobox-progress">
							<div class="easy-pie-chart percentage" data-percent="61"
								data-size="39">
								<span class="percent">61</span>%
							</div>
						</div>

						<div class="infobox-data">
							<div class="infobox-content">Task</div>
							<div class="infobox-content">Completion</div>
						</div>
					</div>

					<div class="infobox infobox-blue infobox-small infobox-dark">
						<div class="infobox-chart">
							<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
						</div>

						<div class="infobox-data">
							<div class="infobox-content">Earnings</div>
							<div class="infobox-content">$32,000</div>
						</div>
					</div>

					<div class="infobox infobox-grey infobox-small infobox-dark">
						<div class="infobox-icon">
							<i class="icon-download-alt"></i>
						</div>

						<div class="infobox-data">
							<div class="infobox-content">Downloads</div>
							<div class="infobox-content">1,205</div>
						</div>
					</div>
				</div>

				<div class="vspace-sm"></div>

				<div class="col-sm-5">
					<div class="widget-box">
						<div class="widget-header widget-header-flat widget-header-small">
							<h5>
								<i class="icon-signal"></i> Traffic Sources
							</h5>

							<div class="widget-toolbar no-border">
								<button class="btn btn-minier btn-primary dropdown-toggle"
									data-toggle="dropdown">
									This Week <i class="icon-angle-down icon-on-right bigger-110"></i>
								</button>

								<ul
									class="dropdown-menu pull-right dropdown-125 dropdown-lighter dropdown-caret">
									<li class="active"><a href="#" class="blue"> <i
											class="icon-caret-right bigger-110">&nbsp;</i> This Week
									</a></li>

									<li><a href="#"> <i
											class="icon-caret-right bigger-110 invisible">&nbsp;</i> Last
											Week
									</a></li>

									<li><a href="#"> <i
											class="icon-caret-right bigger-110 invisible">&nbsp;</i> This
											Month
									</a></li>

									<li><a href="#"> <i
											class="icon-caret-right bigger-110 invisible">&nbsp;</i> Last
											Month
									</a></li>
								</ul>
							</div>
						</div>

						<div class="widget-body">
							<div class="widget-main">
								<div id="piechart-placeholder"></div>

								<div class="hr hr8 hr-double"></div>

								<div class="clearfix">
									<div class="grid3">
										<span class="grey"> <i
											class="icon-facebook-sign icon-2x blue"></i> &nbsp; likes
										</span>
										<h4 class="bigger pull-right">1,255</h4>
									</div>

									<div class="grid3">
										<span class="grey"> <i
											class="icon-twitter-sign icon-2x purple"></i> &nbsp; tweets
										</span>
										<h4 class="bigger pull-right">941</h4>
									</div>

									<div class="grid3">
										<span class="grey"> <i
											class="icon-pinterest-sign icon-2x red"></i> &nbsp; pins
										</span>
										<h4 class="bigger pull-right">1,050</h4>
									</div>
								</div>
							</div>
							<!-- /widget-main -->
						</div>
						<!-- /widget-body -->
					</div>
					<!-- /widget-box -->
				</div>
				<!-- /span -->
			</div>
			<!-- /row -->

			<div class="hr hr32 hr-dotted"></div>

			<!-- /row -->

			<!-- PAGE CONTENT ENDS -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</div>
<!-- /.page-content -->

<!-- page specific plugin scripts -->

<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/jquery.ui.touch-punch.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/jquery.easy-pie-chart.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/flot/jquery.flot.min.js"></script>
<script src="js/flot/jquery.flot.pie.min.js"></script>
<script src="js/flot/jquery.flot.resize.min.js"></script>
<script src="js/jquery.maskedinput.min.js"></script>

<script src="js/select2.min.js"></script>
<script src="js/date-time/bootstrap-datepicker.min.js"></script>
<script src="js/fuelux/fuelux.spinner.min.js"></script>
<script src="js/x-editable/bootstrap-editable.min.js"></script>
<script src="js/x-editable/ace-editable.min.js"></script>

<script type="text/javascript">
	jQuery(function($) {
		$('.easy-pie-chart.percentage')
				.each(
						function() {
							var $box = $(this).closest('.infobox');
							var barColor = $(this).data('color')
									|| (!$box.hasClass('infobox-dark') ? $box
											.css('color')
											: 'rgba(255,255,255,0.95)');
							var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
									: '#E2E2E2';
							var size = parseInt($(this).data('size')) || 50;
							$(this).easyPieChart(
									{
										barColor : barColor,
										trackColor : trackColor,
										scaleColor : false,
										lineCap : 'butt',
										lineWidth : parseInt(size / 10),
										animate : /msie\s*(8|7|6)/
												.test(navigator.userAgent
														.toLowerCase()) ? false
												: 1000,
										size : size
									});
						});

		$('.sparkline').each(
				function() {
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box
							.css('color') : '#FFF';
					$(this).sparkline('html', {
						tagValuesAttribute : 'data-values',
						type : 'bar',
						barColor : barColor,
						chartRangeMin : $(this).data('min') || 0
					});
				});

		var placeholder = $('#piechart-placeholder').css({
			'width' : '90%',
			'min-height' : '150px'
		});
		var data = [ {
			label : "social networks",
			data : 38.7,
			color : "#68BC31"
		}, {
			label : "search engines",
			data : 24.5,
			color : "#2091CF"
		}, {
			label : "ad campaigns",
			data : 8.2,
			color : "#AF4E96"
		}, {
			label : "direct traffic",
			data : 18.6,
			color : "#DA5430"
		}, {
			label : "other",
			data : 10,
			color : "#FEE074"
		} ];
		function drawPieChart(placeholder, data, position) {
			$.plot(placeholder, data, {
				series : {
					pie : {
						show : true,
						tilt : 0.8,
						highlight : {
							opacity : 0.25
						},
						stroke : {
							color : '#fff',
							width : 2
						},
						startAngle : 2
					}
				},
				legend : {
					show : true,
					position : position || "ne",
					labelBoxBorderColor : null,
					margin : [ -30, 15 ]
				},
				grid : {
					hoverable : true,
					clickable : true
				}
			});
		}
		drawPieChart(placeholder, data);

		/**
		we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
		so that's not needed actually.
		 */
		placeholder.data('chart', data);
		placeholder.data('draw', drawPieChart);

		var $tooltip = $(
				"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
				.hide().appendTo('body');
		var previousPoint = null;

		placeholder.on('plothover', function(event, pos, item) {
			if (item) {
				if (previousPoint != item.seriesIndex) {
					previousPoint = item.seriesIndex;
					var tip = item.series['label'] + " : "
							+ item.series['percent'] + '%';
					$tooltip.show().children(0).text(tip);
				}
				$tooltip.css({
					top : pos.pageY + 10,
					left : pos.pageX + 10
				});
			} else {
				$tooltip.hide();
				previousPoint = null;
			}

		});

		var d1 = [];
		for (var i = 0; i < Math.PI * 2; i += 0.5) {
			d1.push([ i, Math.sin(i) ]);
		}

		var d2 = [];
		for (var i = 0; i < Math.PI * 2; i += 0.5) {
			d2.push([ i, Math.cos(i) ]);
		}

		var d3 = [];
		for (var i = 0; i < Math.PI * 2; i += 0.2) {
			d3.push([ i, Math.tan(i) ]);
		}

		var sales_charts = $('#sales-charts').css({
			'width' : '100%',
			'height' : '220px'
		});
		$.plot("#sales-charts", [ {
			label : "Domains",
			data : d1
		}, {
			label : "Hosting",
			data : d2
		}, {
			label : "Services",
			data : d3
		} ], {
			hoverable : true,
			shadowSize : 0,
			series : {
				lines : {
					show : true
				},
				points : {
					show : true
				}
			},
			xaxis : {
				tickLength : 0
			},
			yaxis : {
				ticks : 10,
				min : -2,
				max : 2,
				tickDecimals : 3
			},
			grid : {
				backgroundColor : {
					colors : [ "#fff", "#fff" ]
				},
				borderWidth : 1,
				borderColor : '#555'
			}
		});

		$('#recent-box [data-rel="tooltip"]').tooltip({
			placement : tooltip_placement
		});
		function tooltip_placement(context, source) {
			var $source = $(source);
			var $parent = $source.closest('.tab-content');
			var off1 = $parent.offset();
			var w1 = $parent.width();

			var off2 = $source.offset();
			var w2 = $source.width();

			if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
				return 'right';
			return 'left';
		}

		$('.dialogs,.comments').slimScroll({
			height : '300px'
		});

		//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
		//so disable dragging when clicking on label
		var agent = navigator.userAgent.toLowerCase();
		if ("ontouchstart" in document && /applewebkit/.test(agent)
				&& /android/.test(agent))
			$('#tasks').on('touchstart', function(e) {
				var li = $(e.target).closest('#tasks li');
				if (li.length == 0)
					return;
				var label = li.find('label.inline').get(0);
				if (label == e.target || $.contains(label, e.target))
					e.stopImmediatePropagation();
			});

		$('#tasks').sortable({
			opacity : 0.8,
			revert : true,
			forceHelperSize : true,
			placeholder : 'draggable-placeholder',
			forcePlaceholderSize : true,
			tolerance : 'pointer',
			stop : function(event, ui) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
				$(ui.item).css('z-index', 'auto');
			}
		});
		$('#tasks').disableSelection();
		$('#tasks input:checkbox').removeAttr('checked').on('click',
				function() {
					if (this.checked)
						$(this).closest('li').addClass('selected');
					else
						$(this).closest('li').removeClass('selected');
				});

	});
</script>