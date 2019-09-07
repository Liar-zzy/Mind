<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Home-Mind</title>
		
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		
		
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="../ace-master/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="../ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		
		<!-- font awesome -->
		<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
		
		<!-- text fonts -->
		<link rel="stylesheet" href="../ace-master/assets/css/fonts.googleapis.com.css" />
		
		<!-- ace styles -->
		<link rel="stylesheet" href="../ace-master/assets/css/ace.min.css" class="../ace-master/ace-main-stylesheet" id="main-ace-style" />
		
		<link rel="stylesheet" href="../ace-master/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="../ace-master/assets/css/ace-rtl.min.css" />
	
		<script src="../ace-master/assets/js/ace-extra.min.js"></script>
</head>
<body class="no-skin">
	
		<!-- 头部bar -->
		<div id="navbar" class="navbar navbar-default ace-save-state">
				<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>
					
					<span class="icon-bar"></span>
					
					<span class="icon-bar"></span>
					
					<span class="icon-bar"></span>
					
				</button>
				
				<div class="navbar-header pull-left">
					<a href="index.html" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Mind
						</small>
					</a>
				</div>
				
				<div class="navbar-buttons navbar-header pull-right " role="navigation">
					<ul class="nav ace-nav">
						
						<!-- 灰色方块  待完成任务 可以舍去不要-->
						<!-- <li class="grey dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>
							
							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i>
									4 Tasks to complete
								</li>
							
								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Software Update</span>
													<span class="pull-right">65%</span>
												</div>
							
												<div class="progress progress-mini">
													<div style="width:65%" class="progress-bar"></div>
												</div>
											</a>
										</li>
							
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Hardware Upgrade</span>
													<span class="pull-right">35%</span>
												</div>
							
												<div class="progress progress-mini">
													<div style="width:35%" class="progress-bar progress-bar-danger"></div>
												</div>
											</a>
										</li>
							
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Unit Testing</span>
													<span class="pull-right">15%</span>
												</div>
							
												<div class="progress progress-mini">
													<div style="width:15%" class="progress-bar progress-bar-warning"></div>
												</div>
											</a>
										</li>
							
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Bug Fixes</span>
													<span class="pull-right">90%</span>
												</div>
							
												<div class="progress progress-mini progress-striped active">
													<div style="width:90%" class="progress-bar progress-bar-success"></div>
												</div>
											</a>
										</li>
									</ul>
								</li>
							
								<li class="dropdown-footer">
									<a href="#">
										See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->
						
						<!-- 紫色方块 消息通知 可以不要 -->
						<!-- <li class="purple dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>
							
							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>
							
								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar navbar-pink">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
													<span class="pull-right badge badge-info">+12</span>
												</div>
											</a>
										</li>
							
										<li>
											<a href="#">
												<i class="btn btn-xs btn-primary fa fa-user"></i>
												Bob just signed up as an editor ...
											</a>
										</li>
							
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
													<span class="pull-right badge badge-success">+8</span>
												</div>
											</a>
										</li>
							
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
													<span class="pull-right badge badge-info">+11</span>
												</div>
											</a>
										</li>
									</ul>
								</li>
							
								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->
						
						<!-- 绿色方块 邮件消息 可以舍去 -->
						<!-- <li class="green dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>
						
							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>
						
								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>
						
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
											</a>
										</li>
						
										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>
						
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
											</a>
										</li>
						
										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>
						
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
											</a>
										</li>
						
										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>
						
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
											</a>
										</li>
						
										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>
						
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>
						
								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->
						
						<!-- 蓝色 方块 个人中心 必要 -->
						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="../ace-master/assets/images/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									
									<small>Welcome,</small>				
									<!-- 此处名字可以替换 -->
									Jason
								</span>
						
								<i class="ace-icon fa fa-caret-down"></i>
							</a>
						
							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<!-- <li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li> -->
						
								<li>
									<!-- 个人中心 -->
									<a href="uesr.html">
										<i class="ace-icon fa fa-user"style="font-family: microsoft yahei"></i>
										个人中心
									</a>
								</li>
						
								<li class="divider"></li>
						
								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										退出登录
									</a>
								</li>
							</ul>
						</li>
						
						
					</ul>
				</div>
				</div>
			</div>
		
		<!-- 主窗口 -->
		<div class="main-container ace-save-state" id="main-container">
			
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}
				catch(e){
					//TODO handle the exception
				}
			</script>
			
			<!-- 侧边按钮菜单	-->
			<div id="sidebar" class="sidebar responsive ace-save-state">
				<script type="text/javascript">
					try{
						ace.settings.loadState('sidebar')
					}catch(e){
						//TODO handle the exception
					}
				</script>
			
			
				<!-- <div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>
				
						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>
				
						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>
				
						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>
				
					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>
				
						<span class="btn btn-info"></span>
				
						<span class="btn btn-warning"></span>
				
						<span class="btn btn-danger"></span>
					</div>
				</div> /.sidebar-shortcuts --> 
						
			
			<!-- 侧边菜单选项 -->
			<ul class="nav nav-list">
				<!-- 当前活动窗口 -->
				<li class="active">
					<a href="index.html">
						<i class="menu-icon fa fa-home"></i>
							<span class="menu-text"> 
								首页
							</span>
					</a>
					<b class="arrow"></b>
				</li>
				
				<!-- 机器管理 -->
				<!-- <li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-desktop"></i>
						<span class="menu-text" style="font-family: microsoft yahei">
							机器管理
						</span>
						<!-- 展开箭头 --
						<b class="arrow fa fa-angle-down"></b>
					</a>
					<b class="arrow"></b>
					<ul class="submenu">
						<!-- 设备列表页面 --
						<li class="">
							
							<a href="machine.html">
								<i class="menu-icon fa fa-caret-right"></i>
								<span style="font-family: microsoft yahei">
									设备列表
								</span>
								
								<!-- <b class="arrow fa fa-angle-down"></b> --
							</a>
						
							<b class="arrow"></b>
						</li>
						<!-- 故障维修 --
						<li class="">
							
							<a href="fix.html">
								<i class="menu-icon fa fa-caret-right"></i>
								<span style="font-family: microsoft yahei">
									故障维修
								</span>
								<!-- <b class="arrow fa fa-angle-down"></b> --
							</a>
						
							<b class="arrow"></b>
						</li>
					</ul>
					
				</li> -->
				
				<!-- 商品管理 -->
				<li class="">
					<a href="mechanical.html">
						<i class="menu-icon fa fa-th-list">
							<span class="menu-text" style="font-family: microsoft yahei"> 
								商品管理
							</span>
						</i>
					</a>
					<b class="arrow"></b>
				</li>
				
				<!-- 数据统计 -->
				<li class="">
					
					<a href="data-all.html">
						<!-- <i class="menu-icon fa fa-picture-o"> -->
						<i class="menu-icon fa fa-google-plus" >
							<span class="menu-text"style="font-family: microsoft yahei"> 
								数据统计
							</span>
						</i>
					</a>
					<b class="arrow"></b>
				</li>
				
				<!-- 图说数据 -->
				<li class="">
					
					<a href="data-display.html">
						<i class="menu-icon  fa fa-bar-chart">
							<span class="menu-text" style="font-family: microsoft yahei"> 
								图说数据
							</span>
						</i>
					</a>
					<b class="arrow"></b>
				</li>
				
				<!-- 个人中心 -->
				<li class="">
					
					<a href="user.html">
						<i class="menu-icon fa fa-user">
							<span class="menu-text"style="font-family: microsoft yahei"> 
								个人中心
							</span>
						</i>
					</a>
					<b class="arrow"></b>
				</li>
			</ul>
			<!-- <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div> -->
		</div> 
			<!-- 结束侧边菜单 -->
		
		<!-- 主体内容 -->
		<div class="main-content" >
			
			<!-- 页面导航 -->
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							
								<span style="font-family: microsoft yahei">
									<a href="#">
									首页
									</a>
								</span>
								
						</li>
					</ul>
				</div>
			
			
			<!-- 页面内容 -->
				
				
				<div class="page-content">
					<span style="font-family: microsoft yahei;font-size: 50px;">
					<p>
						商品管理员
					</p>
					<tr></tr>
					<p>
						欢迎进入Mind售货机管理系统！
					</p>
					</span>
				</div>
				
			</div>
		</div>
			<!-- 页面脚底 -->
		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120">
						<span class="blue bolder">Mind</span>
							Application &copy; 2019-2020
					</span>
					&nbsp; &nbsp;
					<span class="action-buttons">
						<a href="#">
							<i class="ace-icon fa fa-qq light-blue bigger-150"></i>
						</a>
		
						<a href="#">
							<i class="ace-icon fa fa-weibo text-primary bigger-150"></i>
						</a>
		
						<a href="#">
							<i class="ace-icon fa fa-weixin  bigger-150"></i>
						</a>
					</span>
				</div>
			</div>
		</div>
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">	
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
			
		<!-- /.main-container -->
		</div>
		
		<script src="../ace-master/assets/js/jquery-2.1.4.min.js"></script>
		
				<!-- <![endif]-->
		
				<!--[if IE]>
		<script src="assets/js/jquery-1.11.3.min.js"></script>
		<![endif]-->
				<script type="text/javascript">
					if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
				</script>
				<script src="../ace-master/assets/js/bootstrap.min.js"></script>
		
				<!-- page specific plugin scripts -->
		
				<!--[if lte IE 8]>
				  <script src="assets/js/excanvas.min.js"></script>
				<![endif]-->
				<script src="../ace-master/assets/js/jquery-ui.custom.min.js"></script>
				<script src="../ace-master/assets/js/jquery.ui.touch-punch.min.js"></script>
				<script src="../ace-master/assets/js/jquery.easypiechart.min.js"></script>
				<script src="../ace-master/assets/js/jquery.sparkline.index.min.js"></script>
				<script src="../ace-master/assets/js/jquery.flot.min.js"></script>
				<script src="../ace-master/assets/js/jquery.flot.pie.min.js"></script>
				<script src="../ace-master/assets/js/jquery.flot.resize.min.js"></script>
		
				<!-- ace scripts -->
				<script src="../ace-master/assets/js/ace-elements.min.js"></script>
				<script src="../ace-master/assets/js/ace.min.js"></script>
		
				<!-- inline scripts related to this page -->
				<script type="text/javascript">
					jQuery(function($) {
						$('.easy-pie-chart.percentage').each(function(){
							var $box = $(this).closest('.infobox');
							var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
							var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
							var size = parseInt($(this).data('size')) || 50;
							$(this).easyPieChart({
								barColor: barColor,
								trackColor: trackColor,
								scaleColor: false,
								lineCap: 'butt',
								lineWidth: parseInt(size/10),
								animate: ace.vars['old_ie'] ? false : 1000,
								size: size
							});
						})
					
						$('.sparkline').each(function(){
							var $box = $(this).closest('.infobox');
							var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
							$(this).sparkline('html',
											 {
												tagValuesAttribute:'data-values',
												type: 'bar',
												barColor: barColor ,
												chartRangeMin:$(this).data('min') || 0
											 });
						});
					
					
					  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
					  //but sometimes it brings up errors with normal resize event handlers
					  $.resize.throttleWindow = false;
					
					  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
					  var data = [
						{ label: "social networks",  data: 38.7, color: "#68BC31"},
						{ label: "search engines",  data: 24.5, color: "#2091CF"},
						{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
						{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
						{ label: "other",  data: 10, color: "#FEE074"}
					  ]
					  function drawPieChart(placeholder, data, position) {
					 	  $.plot(placeholder, data, {
							series: {
								pie: {
									show: true,
									tilt:0.8,
									highlight: {
										opacity: 0.25
									},
									stroke: {
										color: '#fff',
										width: 2
									},
									startAngle: 2
								}
							},
							legend: {
								show: true,
								position: position || "ne", 
								labelBoxBorderColor: null,
								margin:[-30,15]
							}
							,
							grid: {
								hoverable: true,
								clickable: true
							}
						 })
					 }
					 drawPieChart(placeholder, data);
					
					 /**
					 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
					 so that's not needed actually.
					 */
					 placeholder.data('chart', data);
					 placeholder.data('draw', drawPieChart);
					
					
					  //pie chart tooltip example
					  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
					  var previousPoint = null;
					
					  placeholder.on('plothover', function (event, pos, item) {
						if(item) {
							if (previousPoint != item.seriesIndex) {
								previousPoint = item.seriesIndex;
								var tip = item.series['label'] + " : " + item.series['percent']+'%';
								$tooltip.show().children(0).text(tip);
							}
							$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
						} else {
							$tooltip.hide();
							previousPoint = null;
						}
						
					 });
					
						/////////////////////////////////////
						$(document).one('ajaxloadstart.page', function(e) {
							$tooltip.remove();
						});
					
					
					
					
						var d1 = [];
						for (var i = 0; i < Math.PI * 2; i += 0.5) {
							d1.push([i, Math.sin(i)]);
						}
					
						var d2 = [];
						for (var i = 0; i < Math.PI * 2; i += 0.5) {
							d2.push([i, Math.cos(i)]);
						}
					
						var d3 = [];
						for (var i = 0; i < Math.PI * 2; i += 0.2) {
							d3.push([i, Math.tan(i)]);
						}
						
					
						var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
						$.plot("#sales-charts", [
							{ label: "Domains", data: d1 },
							{ label: "Hosting", data: d2 },
							{ label: "Services", data: d3 }
						], {
							hoverable: true,
							shadowSize: 0,
							series: {
								lines: { show: true },
								points: { show: true }
							},
							xaxis: {
								tickLength: 0
							},
							yaxis: {
								ticks: 10,
								min: -2,
								max: 2,
								tickDecimals: 3
							},
							grid: {
								backgroundColor: { colors: [ "#fff", "#fff" ] },
								borderWidth: 1,
								borderColor:'#555'
							}
						});
					
					
						$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
						function tooltip_placement(context, source) {
							var $source = $(source);
							var $parent = $source.closest('.tab-content')
							var off1 = $parent.offset();
							var w1 = $parent.width();
					
							var off2 = $source.offset();
							//var w2 = $source.width();
					
							if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
							return 'left';
						}
					
					
						$('.dialogs,.comments').ace_scroll({
							size: 300
					    });
						
						
						//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
						//so disable dragging when clicking on label
						var agent = navigator.userAgent.toLowerCase();
						if(ace.vars['touch'] && ace.vars['android']) {
						  $('#tasks').on('touchstart', function(e){
							var li = $(e.target).closest('#tasks li');
							if(li.length == 0)return;
							var label = li.find('label.inline').get(0);
							if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
						  });
						}
					
						$('#tasks').sortable({
							opacity:0.8,
							revert:true,
							forceHelperSize:true,
							placeholder: 'draggable-placeholder',
							forcePlaceholderSize:true,
							tolerance:'pointer',
							stop: function( event, ui ) {
								//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
								$(ui.item).css('z-index', 'auto');
							}
							}
						);
						$('#tasks').disableSelection();
						$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
							if(this.checked) $(this).closest('li').addClass('selected');
							else $(this).closest('li').removeClass('selected');
						});
					
					
						//show the dropdowns on top or bottom depending on window height and menu position
						$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
							var offset = $(this).offset();
					
							var $w = $(window)
							if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
								$(this).addClass('dropup');
							else $(this).removeClass('dropup');
						});
					
					})
				</script>
	</body>
</html>