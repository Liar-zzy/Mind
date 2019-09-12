<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- 设备运营商 user界面 -->
<html lang="zh">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>User-Mind</title>

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />


    <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../ace-master/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- font awesome -->
    <link rel="stylesheet" href="../ace-master/assets/font-awesome/css/font-awesome.min.css">

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

                        <li>
                            <!-- 个人中心 -->
                            <a href="${ctx}/redirectTo/user">
                                <i class="ace-icon fa fa-user" style="font-family: microsoft yahei"></i>
                                个人中心
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
            <li class="">
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
										设备管理
									</span>

                            <!-- <b class="arrow fa fa-angle-down"></b> -->
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <!-- 故障维修 -->
                    <li class="">

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

            <li class="">
                <a href="${ctx}/redirectTo/merchandise">
                    <i class="menu-icon fa fa-th-list">
								<span class="menu-text" style="font-family: microsoft yahei">
									商品列表
								</span>
                    </i>
                </a>
                <b class="arrow"></b>
            </li>

            <!-- 数据统计 -->
            <li class="">

                <a href="${ctx}/redirectTo/dataall">
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
            <li class="active">

                <a href="${ctx}/redirectTo/user">
                    <i class="menu-icon fa fa-user">
								<span class="menu-text" style="font-family: microsoft yahei">
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

									个人中心
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
									个人中心
									<small>
										<i class="ace-icon fa fa-angle-double-right"></i>
										显示用户详细
									</small>
								</h1>
							</span>
                </div><!-- /.page-header -->

                <!-- 修改信息弹出框 -->
                <div class="modal" id="alter-modal" backdrop="true" keyboard="false">
                    <div class="modal-dialog" style="background-color: #FFFFFF">
                        <div class="modal-header">
                            <i class="ace-icon fa fa-pencil-square-ofa bigger-120"></i>
                            <span style="font-family: microsoft yahei">
										修改信息
									</span>
                        </div>

                        <div class="modal-body">
                            <form class="form-horizontal" id="validation-form" method="get">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="alter_tel"> <span style="color: #FF0000;">*</span>联系方式</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="alter_tel" class="col-xs-10 col-sm-5" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="alter_email"> <span style="color: #FF0000;">*</span>邮箱</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="alter_email" class="col-xs-10 col-sm-5" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="alter_addr"> <span style="color: #FF0000;">*</span>地址</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="alter_addr" class="col-xs-10 col-sm-5" placeholder=" " />
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" id="altersubmit" class="btn btn-primary" data-toggle="modal" data-target="#add-modal">确定</button>
                        </div>
                    </div><!-- modal-dialog -->
                </div>

                <!-- 修改密码弹出框 -->
                <div class="modal" id="alter-mima" backdrop="true" keyboard="false">
                    <div class="modal-dialog" style="background-color: #FFFFFF">
                        <div class="modal-header">
                            <i class="ace-icon fa fa-pencil-square-ofa bigger-120"></i>
                            <span style="font-family: microsoft yahei">
										修改密码
									</span>
                        </div>

                        <div class="modal-body">


                            <form class="form-horizontal" id="pwdform">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="pwd">Password</label>
                                    <div class="col-sm-9">
                                        <input id="pwd" name="pwd" class="col-xs-10 col-sm-5" placeholder="请设置新密码"/>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <label class="col-sm-3 control-label no-padding-right" for="checkpwd">Again</label>
                                    <div class="col-sm-9">
                                        <input  id="checkpwd" name="checkpwd" class="col-xs-10 col-sm-5" placeholder="请再次填写新密码"/>
                                    </div>
                                </div>

                            </form>

                        </div>

                        <div class="space-4"></div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="submit" id="submitpwd"  class="btn btn-primary">确定</button>
                        </div>
                    </div><!-- modal-dialog -->
                </div>

                <div class="row">
                    <div class="col">

                        <!-- 表格头部 -->


                        <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
                        <a href="" class=""> 请选择操作 </a>

                        <button class="btn btn-white btn-default btn-round"
                               id="alteruser" data-toggle="modal" data-target="#alter-modal">
                            <i class="ace-icon fa fa-pencil-square-o red2"></i>
                            <span style="font-family: microsoft yahei">
										修改信息
									</span>
                        </button>

                        <button class="btn btn-white btn-default btn-round"
                               id="alterpwd" data-toggle="modal" data-target="#alter-mima">
                            <i class="ace-icon fa fa-pencil-square-o red2"></i>
                            <span style="font-family: microsoft yahei">
										修改密码
									</span>
                        </button>

                        <div class="hr hr-18 dotted hr-double"></div>


                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="form-input-readonly"> <span style="color: #FF0000;">*</span>用户ID</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" class="col-xs-10 col-sm-5" id="form-input-readonly" value="${SESSION_USER.userId}" />

                                </div>
                            </div>

                        </form>

                        <div class="space-4"></div>

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="username"> <span style="color: #FF0000;">*</span>用户名</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="username" class="col-xs-10 col-sm-5" value="${SESSION_USER.username}" />
                                </div>
                            </div>
                        </form>
                        <div class="space-4"></div>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="role"> <span style="color: #FF0000;">*</span>角色</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="role" class="col-xs-10 col-sm-5" value="${SESSION_USER.role}" />
                                </div>
                            </div>

                        </form>
                        <div class="space-4"></div>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="tel"> <span style="color: #FF0000;">*</span>联系方式</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="tel" class="col-xs-10 col-sm-5" value="${SESSION_USER.tel}" />
                                </div>
                            </div>

                        </form>
                        <div class="space-4"></div>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="email"> <span style="color: #FF0000;">*</span>邮箱</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="email" class="col-xs-10 col-sm-5" value="${SESSION_USER.email}" />
                                </div>
                            </div>

                        </form>
                        <div class="space-4"></div>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="addr"> <span style="color: #FF0000;">*</span>地址</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="addr" class="col-xs-10 col-sm-5" value="${SESSION_USER.addr}" />
                                </div>
                            </div>

                        </form>
                        <div class="space-4"></div>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="createDate"> <span style="color: #FF0000;">*</span>创建时间</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="createDate" class="col-xs-10 col-sm-5" value="${SESSION_USER.createDate}" />
                                </div>
                            </div>

                        </form>
                        <div class="space-4"></div>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label no-padding-right" for="endDate"> <span style="color: #FF0000;">*</span>到期时间</label>
                                <div class="col-sm-8">
                                    <input readonly="" type="text" id="endDate" class="col-xs-10 col-sm-5" value="${SESSION_USER.endDate}" />
                                </div>
                            </div>

                        </form>
                        <div class="space-4"></div>
                    </div>
                </div>

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
<script src="../layui-v2.5.4/layui/layui.all.js"></script>
<script src="../layui-v2.5.4/layui/layui.js"></script>
<script src="../ace-master/assets/js/bootstrap.min.js"></script>
<!-- <![endif]-->

<!--[if IE]>
<script src="../ace-master/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
	if ('ontouchstart' in document.documentElement) document.write(
			"<script src='../ace-master/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>


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

<script src="../ace-master/assets/js/wizard.min.js"></script>
<script src="../ace-master/assets/js/jquery.validate.min.js"></script>
<script src="../ace-master/assets/js/jquery-additional-methods.min.js"></script>
<script src="../ace-master/assets/js/bootbox.js"></script>
<script src="../ace-master/assets/js/jquery.maskedinput.min.js"></script>
<script src="../ace-master/assets/js/select2.min.js"></script>


<script src="https://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
<script src="https://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
<script>
    layui.use(['element','jquery','layer'],function () {
        var element=layui.element;
        var jquery=layui.jquery;
        var layer=layui.layer;
    });
    jQuery(function($) {

        var altertel=$('#tel').val();
        var alteremail=$('#email').val()
        var alteraddr=$('#addr').val()

        $('#alter_tel').val(altertel);
        $('#alter_email').val(alteremail)
        $('#alter_addr').val(alteraddr)

        $('#altersubmit').click(function () {
            var alteredtel=$('#alter_tel').val()
            var alteredemail=$('#alter_email').val()
            var alteredaddr=$('#alter_addr').val()
            console.log(alteredtel)

            var obj={
                tel:alteredtel,
                addr:alteredaddr,
                email:alteredemail,
            }
            $.ajax({
                url:'${ctx}/user/updateMyUser',
                type:'post',
                contentType:'application/json',
                data:JSON.stringify(obj),
                success:function (data) {
                    if(data.update=="success"){
                        layer.msg('修改成功');
                        $('#alter-modal').modal('hide')

                        setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
                            window.location.reload();//页面刷新
                        },2000);
                    }
                }

            })
        });

        $('#submitpwd').click(function () {
            var alteredpwd=$('#pwd').val();
            var alteredcheckpwd=$('#checkpwd').val();
            if(alteredpwd==alteredcheckpwd){
                var obj={
                    password:alteredpwd,
                }
                $.ajax({
                    url:'${ctx}/user/updateMyUserpwd',
                    type:'post',
                    contentType:'application/json',
                    data:JSON.stringify(obj),
                    success:function (data) {
                        if(data.updatepwd=="success"){
                            layer.msg('修改密码成功,请重新登录');
                            setTimeout(function(){
                                window.location.href="login.jsp";
                            },2000);
                        }
                    }

                })
            }else{
                layer.msg('密码不一致');
            }
        });
    })


</script>

<script>
    // just for the demos, avoids form submit
    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });
    $("#pwdform").validate({
        rules: {
            pwd: {
                required:true,
                minlength:6
            },
            checkpwd: {
                equalTo: "#pwd"
            }
        }
    });
</script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {


        $('#validation-form').ready(function() {
            var pwd1 = document.getElementById("password").value;
            var pwd2 = document.getElementById("password2").value;
            if (pwd1 == pwd2) {
                document.getElementById("tishi").innerHTML = "<font color='gray'>输入正确</font>";
                /*         $("#tishi").hide(1500); */
                document.getElementById("dosubmit").disabled = false;
            } else {
                document.getElementById("tishi").innerHTML = "<font color='red'>两次密码不相同</font>";
                document.getElementById("dosubmit").disabled = true;
            }
        });



        $('.easy-pie-chart.percentage').each(function() {
            var $box = $(this).closest('.infobox');
            var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') :
                'rgba(255,255,255,0.95)');
            var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
            var size = parseInt($(this).data('size')) || 50;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size / 10),
                animate: ace.vars['old_ie'] ? false : 1000,
                size: size
            });
        })

        $('.sparkline').each(function() {
            var $box = $(this).closest('.infobox');
            var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
            $(this).sparkline('html', {
                tagValuesAttribute: 'data-values',
                type: 'bar',
                barColor: barColor,
                chartRangeMin: $(this).data('min') || 0
            });
        });


        //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
        //but sometimes it brings up errors with normal resize event handlers
        $.resize.throttleWindow = false;

        var placeholder = $('#piechart-placeholder').css({
            'width': '90%',
            'min-height': '150px'
        });
        var data = [{
            label: "social networks",
            data: 38.7,
            color: "#68BC31"
        },
            {
                label: "search engines",
                data: 24.5,
                color: "#2091CF"
            },
            {
                label: "ad campaigns",
                data: 8.2,
                color: "#AF4E96"
            },
            {
                label: "direct traffic",
                data: 18.6,
                color: "#DA5430"
            },
            {
                label: "other",
                data: 10,
                color: "#FEE074"
            }
        ]

        function drawPieChart(placeholder, data, position) {
            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        tilt: 0.8,
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
                    margin: [-30, 15]
                },
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

        placeholder.on('plothover', function(event, pos, item) {
            if (item) {
                if (previousPoint != item.seriesIndex) {
                    previousPoint = item.seriesIndex;
                    var tip = item.series['label'] + " : " + item.series['percent'] + '%';
                    $tooltip.show().children(0).text(tip);
                }
                $tooltip.css({
                    top: pos.pageY + 10,
                    left: pos.pageX + 10
                });
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


        var sales_charts = $('#sales-charts').css({
            'width': '100%',
            'height': '220px'
        });
        $.plot("#sales-charts", [{
            label: "Domains",
            data: d1
        },
            {
                label: "Hosting",
                data: d2
            },
            {
                label: "Services",
                data: d3
            }
        ], {
            hoverable: true,
            shadowSize: 0,
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
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
                backgroundColor: {
                    colors: ["#fff", "#fff"]
                },
                borderWidth: 1,
                borderColor: '#555'
            }
        });


        $('#recent-box [data-rel="tooltip"]').tooltip({
            placement: tooltip_placement
        });

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('.tab-content')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }


        $('.dialogs,.comments').ace_scroll({
            size: 300
        });


        //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
        //so disable dragging when clicking on label
        var agent = navigator.userAgent.toLowerCase();
        if (ace.vars['touch'] && ace.vars['android']) {
            $('#tasks').on('touchstart', function(e) {
                var li = $(e.target).closest('#tasks li');
                if (li.length == 0) return;
                var label = li.find('label.inline').get(0);
                if (label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation();
            });
        }

        $('#tasks').sortable({
            opacity: 0.8,
            revert: true,
            forceHelperSize: true,
            placeholder: 'draggable-placeholder',
            forcePlaceholderSize: true,
            tolerance: 'pointer',
            stop: function(event, ui) {
                //just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                $(ui.item).css('z-index', 'auto');
            }
        });
        $('#tasks').disableSelection();
        $('#tasks input:checkbox').removeAttr('checked').on('click', function() {
            if (this.checked) $(this).closest('li').addClass('selected');
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
