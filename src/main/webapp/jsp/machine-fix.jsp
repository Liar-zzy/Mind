<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>Machine-fix-Mind</title>

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
			<a href="${ctx}/redirectTo/index" class="navbar-brand">
				<small>
					<i class="fa fa-leaf"></i>
					Mind
				</small>
			</a>
		</div>

		<div class="navbar-buttons navbar-header pull-right " role="navigation">
			<ul class="nav ace-nav">


				<!-- 蓝色 方块 个人中心 必要 -->
				<li class="light-blue dropdown-modal">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle">
						<img class="nav-user-photo" src="../ace-master/assets/images/avatars/user.jpg" alt="Jason's Photo" />
						<span class="user-info">

									<small>Welcome,</small>
							<!-- 此处名字可以替换 -->
									${SESSION_USER.username}
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
							<a href="${ctx}/redirectTo/user">
								<i class="ace-icon fa fa-user" style="font-family: microsoft yahei"></i>
								账号管理
							</a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="${ctx}/user/logout">
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
		try {
			ace.settings.loadState('main-container')
		} catch (e) {
			//TODO handle the exception
		}
	</script>

	<!-- 侧边按钮菜单	-->
	<div id="sidebar" class="sidebar responsive ace-save-state">
		<script type="text/javascript">
			try {
				ace.settings.loadState('sidebar')
			} catch (e) {
				//TODO handle the exception
			}
		</script>


		<!-- 侧边菜单选项 -->
		<ul class="nav nav-list">
			<!-- 当前活动窗口 -->
			<li class="">
				<a href="${ctx}/redirectTo/index">
					<i class="menu-icon fa fa-home"></i>
					<span class="menu-text">
								首页
							</span>
				</a>
				<b class="arrow"></b>
			</li>

			<!-- 机器管理 -->
			<li class="active open">
				<a href="#" class="dropdown-toggle">
					<i class="menu-icon fa fa-desktop"></i>
					<span class="menu-text" style="font-family: microsoft yahei">
								机器管理
							</span>
					<!-- 展开箭头 -->
					<b class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				<ul class="submenu">
					<!-- 设备列表页面 -->
					<li class="">

						<a href="${ctx}/redirectTo/machine">
							<i class="menu-icon fa fa-caret-right"></i>
							<span style="font-family: microsoft yahei">
										设备列表
									</span>

							<!-- <b class="arrow fa fa-angle-down"></b> -->
						</a>

						<b class="arrow"></b>
					</li>
					<!-- 故障维修 -->
					<li class="active">

						<a href="${ctx}/redirectTo/machinefix">
							<i class="menu-icon fa fa-caret-right"></i>
							<span style="font-family: microsoft yahei">
										故障维修
									</span>
							<!-- <b class="arrow fa fa-angle-down"></b> -->
						</a>

						<b class="arrow"></b>
					</li>
				</ul>

			</li>

			<!-- 商品管理 -->
			<li class="">
				<a href="${ctx}/redirectTo/merchandise">
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

				<a href="${ctx}/redirectTo/dataall">
					<!-- <i class="menu-icon fa fa-picture-o"> -->
					<i class="menu-icon fa fa-google-plus">
								<span class="menu-text" style="font-family: microsoft yahei">
									数据统计
								</span>
					</i>
				</a>
				<b class="arrow"></b>
			</li>

			<!-- 图说数据 -->
			<li class="">

				<a href="${ctx}/redirectTo/datadisplay">
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

				<a href="${ctx}/redirectTo/user">
					<i class="menu-icon fa fa-user">
								<span class="menu-text" style="font-family: microsoft yahei">
									账号管理
								</span>
					</i>
				</a>
				<b class="arrow"></b>
			</li>
		</ul>

	</div>
	<!-- 结束侧边菜单 -->

	<!-- 主体内容 -->
	<div class="main-content">

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
					<li>
								<span style="font-family: microsoft yahei">
									<a href="#">
										机器管理
									</a>
								</span>
					</li>
					<li>
								<span style="font-family: microsoft yahei">
									<a href="#">
										故障维修
									</a>
								</span>
					</li>
				</ul>
			</div>


			<!-- 页面内容 -->

			<div class="page-content">
				<div class="page-header">
							<span style="font-family: microsoft yahei">
								<h1>
									故障维修
									<small>
										<i class="ace-icon fa fa-angle-double-right"></i>
										显示故障设备ID及持有人
									</small>
								</h1>
							</span>
				</div><!-- /.page-header -->


				<!-- 表格的绘制 -->
				<div class="row">
					<div class="col">

						<!-- 表格的头部 -->
						<div class="table-header" style="background-color: #FFFFFF;">


							<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
							<a href="" class=""> 请选择操作 </a>


							<button class="btn btn-white btn-warning btn-bold" id="deletefix">
								<i class="ace-icon fa fa-trash-o bigger-120 orange"></i>
								<span style="font-family: microsoft yahei">
											删除设备
										</span>
							</button>

						</div>

					</div><!-- 表格的头部  结束-->



					<!-- 表格主体部分 -->
					<div>
						<table id="dynamic-table" class="table table-striped table-bordered table-hover">
							<thead>
							<tr>
								<th class="center">
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</th>
								<th>设备ID</th>

								<th class="hidden-480">持有人</th>




							</tr>
							</thead>

							<!-- jsp 循环输入  改一下 各个变量名 然后循环 -->
							<tbody>
							<c:forEach items="${AllDamageMachine}" var="obj">
								<tr>
									<td class="center">
										<label class="pos-rel">
											<input type="checkbox" class="ace"/>
											<span class="lbl"></span>
										</label>
									</td>
									<td>${obj.machineId}</td>
									<td>${obj.possessor}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!-- page-content -->
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
<script src="../layui-v2.5.4/layui/layui.all.js"></script>
<script src="../layui-v2.5.4/layui/layui.js"></script>
<!-- <![endif]-->

<!--[if IE]>
<script src="../ace-master/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
	if ('ontouchstart' in document.documentElement) document.write(
			"<script src='../ace-master/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="../ace-master/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="../ace-master/assets/js/jquery.dataTables.min.js"></script>
<script src="../ace-master/assets/js/jquery.dataTables.bootstrap.min.js"></script>
<script src="../ace-master/assets/js/dataTables.buttons.min.js"></script>
<script src="../ace-master/assets/js/buttons.flash.min.js"></script>
<script src="../ace-master/assets/js/buttons.html5.min.js"></script>
<script src="../ace-master/assets/js/buttons.print.min.js"></script>
<script src="../ace-master/assets/js/buttons.colVis.min.js"></script>
<script src="../ace-master/assets/js/dataTables.select.min.js"></script>

<!-- ace scripts -->
<script src="../ace-master/assets/js/ace-elements.min.js"></script>
<script src="../ace-master/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
	layui.use(['element','jquery','layer'],function () {
		var element=layui.element;
		var jquery=layui.jquery;
		var layer=layui.layer;
	})
	jQuery(function($) {
		//initiate dataTables plugin
		var myTable =
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
						.DataTable({
							bAutoWidth: false,
							"aoColumns": [{
								"bSortable": false
							},
								null, null
							],
							"aaSorting": [],

							select: {
								style: 'multi'
							}
						});



		$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

		new $.fn.dataTable.Buttons(myTable, {
			buttons: [{
				"extend": "colvis",
				"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
				"className": "btn btn-white btn-primary btn-bold",
				columns: ':not(:first):not(:last)'
			},
				{
					"extend": "copy",
					"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
					"className": "btn btn-white btn-primary btn-bold"
				},
				{
					"extend": "csv",
					"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
					"className": "btn btn-white btn-primary btn-bold"
				},
				{
					"extend": "excel",
					"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
					"className": "btn btn-white btn-primary btn-bold"
				},
				{
					"extend": "pdf",
					"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
					"className": "btn btn-white btn-primary btn-bold"
				},
				{
					"extend": "print",
					"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
					"className": "btn btn-white btn-primary btn-bold",
					autoPrint: false,
					message: 'This print was produced using the Print button for DataTables'
				}
			]
		});
		myTable.buttons().container().appendTo($('.tableTools-container'));

		//style the message box
		var defaultCopyAction = myTable.button(1).action();
		myTable.button(1).action(function(e, dt, button, config) {
			defaultCopyAction(e, dt, button, config);
			$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
		});


		var defaultColvisAction = myTable.button(0).action();
		myTable.button(0).action(function(e, dt, button, config) {

			defaultColvisAction(e, dt, button, config);


			if ($('.dt-button-collection > .dropdown-menu').length == 0) {
				$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
			}
			$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
		});

		////

		setTimeout(function() {
			$($('.tableTools-container')).find('a.dt-button').each(function() {
				var div = $(this).find(' > div').first();
				if (div.length == 1) div.tooltip({
					container: 'body',
					title: div.parent().text()
				});
				else $(this).tooltip({
					container: 'body',
					title: $(this).text()
				});
			});
		}, 500);





		myTable.on('select', function(e, dt, type, index) {
			if (type === 'row') {
				$(myTable.row(index).node()).find('input:checkbox').prop('checked', true);
			}
		});
		myTable.on('deselect', function(e, dt, type, index) {
			if (type === 'row') {
				$(myTable.row(index).node()).find('input:checkbox').prop('checked', false);
			}
		});




		/////////////////////////////////
		//table checkboxes
		$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

		//select/deselect all rows according to table header checkbox
		$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on(
				'click',
				function() {
					var th_checked = this.checked; //checkbox inside "TH" table header

					$('#dynamic-table').find('tbody > tr').each(function() {
						var row = this;
						if (th_checked) myTable.row(row).select();
						else myTable.row(row).deselect();
					});
				});

		//select/deselect a row when the checkbox is checked/unchecked
		$('#dynamic-table').on('click', 'td input[type=checkbox]', function() {
			var row = $(this).closest('tr').get(0);
			if (this.checked) myTable.row(row).deselect();
			else {
				myTable.row(row).select();
				var data=myTable.row(row).data();
				console.log(data)

				$('#deletefix').click(function () {
					var machineid=data[1];
					console.log(machineid)
					var deleteobj={
						machineId:machineid,
						state:1,
					}
					$.ajax({
						url:'${ctx}/machine/updateAMachine',
						type:'post',
						contentType:'application/json',
						data:JSON.stringify(deleteobj),
						success:function (data) {
							if(data.update=="success"){
								layer.msg("删除成功");
								setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
									window.location.reload();//页面刷新
								},2000);
							}

						}
					})
				})



			}
		});



		$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
			e.stopImmediatePropagation();
			e.stopPropagation();
			e.preventDefault();
		});



		//And for the first simple table, which doesn't have TableTools or dataTables
		//select/deselect all rows according to table header checkbox
		var active_class = 'active';
		$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
			var th_checked = this.checked; //checkbox inside "TH" table header

			$(this).closest('table').find('tbody > tr').each(function() {
				var row = this;
				if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
				else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
			});
		});

		//select/deselect a row when the checkbox is checked/unchecked
		$('#simple-table').on('click', 'td input[type=checkbox]', function() {
			var $row = $(this).closest('tr');
			if ($row.is('.detail-row ')) return;
			if (this.checked) $row.addClass(active_class);
			else $row.removeClass(active_class);
		});



		/********************************/
		//add tooltip for small view action buttons in dropdown menu
		$('[data-rel="tooltip"]').tooltip({
			placement: tooltip_placement
		});

		//tooltip placement on right or left
		function tooltip_placement(context, source) {
			var $source = $(source);
			var $parent = $source.closest('table')
			var off1 = $parent.offset();
			var w1 = $parent.width();

			var off2 = $source.offset();
			//var w2 = $source.width();

			if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
			return 'left';
		}




		/***************/
		$('.show-details-btn').on('click', function(e) {
			e.preventDefault();
			$(this).closest('tr').next().toggleClass('open');
			$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
		});
	})
</script>
</body>
</html>
