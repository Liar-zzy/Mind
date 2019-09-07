<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Login-Mind</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../ace-master/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="../ace-master/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="../ace-master/assets/css/ace.min.css" />

   
    <link rel="stylesheet" href="../ace-master/assets/css/ace-rtl.min.css" />

   
</head>

<body class="login-layout">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="ace-icon fa fa-leaf green"></i>
                            <span class="red">Mind</span>
                            <span class="white" id="id-text2">售货机管理系统</span>
                        </h1>

                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        账号登录：
                                    </h4>

                                    <div class="space-6"></div>

                                    <form action="/user/login" method="post" id="login_form">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="username"  placeholder="请输入用户名" minlength="4" maxlength="10" required />
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>
									

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"  name="password" placeholder="请输入密码" minlength="6"  required />
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <div class="space"></div>

                                            <div class="clearfix">

                                                <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">Login</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>


                                    <div class="space-6"></div>


                                </div><!-- /.widget-main -->

                                <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" data-target="#signup-box" class="user-signup-link">
                                            I want to register
                                            <i class="ace-icon fa fa-arrow-right"></i>
                                        </a>
                                    </div>

                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->


                        <div id="signup-box" class="signup-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="ace-icon fa fa-users blue"></i>
                                        用户注册
                                    </h4>

                                    <div class="space-6"></div>
                                    <p> 请输入基本信息： </p>

                                    <form action="/user/register" method="post" id="register_form">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="username" id="login_username" placeholder="姓名" minlength="4"  maxlength="10" required />
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" name="password" id="login_pwd" placeholder="密码" minlength="6"  required />
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" id="login_checkpwd" placeholder="确认密码" equalTo="#login_pwd"  required />
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="tel" id="login_id" placeholder="联系方式"  />
															<i class="ace-icon fa fa-mobile"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
														<select style="width: 100%;font-size: 14px;font-weight: 400;" id="state" name="role" >
															<option value="ACE">平台管理员</option>
															<option value="FIX">维修人员</option>
															<option value="MAC">设备运营商</option>
															<option value="CH">商品生产商</option>
														</select>
														<i class="ace-icon fa fa-address-card"></i>
														</span>

                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" name="email" placeholder="邮箱" required  />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="addr" placeholder="地址" minlength="10" maxlength="20"  required />
															<i class="ace-icon fa fa-map-marker"></i>
														</span>
                                            </label>

                                            

                                            <div class="space-24"></div>

                                            <div class="clearfix">
                                                <button type="reset" class="width-30 pull-left btn btn-sm">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    <span class="bigger-110">Reset</span>
                                                </button>

                                                <button type="submit" class="width-65 pull-right btn btn-sm btn-success">
                                                    <span class="bigger-110">Register</span>

                                                    <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        Back to login
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.signup-box -->
                    </div><!-- /.position-relative -->

                    <div class="navbar-fixed-top align-right">
                        <br />
                        &nbsp;
                        <a id="btn-login-dark" href="#">Dark</a>
                        &nbsp;
                        <span class="blue">/</span>
                        &nbsp;
                        <a id="btn-login-blur" href="#">Blur</a>
                        &nbsp;
                        <span class="blue">/</span>
                        &nbsp;
                        <a id="btn-login-light" href="#">Light</a>
                        &nbsp; &nbsp; &nbsp;
                    </div>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<!-- basic scripts -->
<script src="../ace-master/assets/js/jquery-2.1.4.min.js"></script>
<script src="../layui-v2.5.4/layui/layui.all.js"></script>
<script src="../layui-v2.5.4/layui/layui.js"></script>

<!-- 验证插件 -->
<script src ="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"> </script>
<script src ="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"> </script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>

<!-- 验证代码 试验login_form  register_form -->
<script>
$.validator.setDefaults({
    submitHandler: function() {
      alert("提交事件!");
    }
});
$().ready(function() {
    $("#login_form").validate();
});
</script>
<script>
$.validator.setDefaults({
    submitHandler: function() {
      alert("提交事件!");
    }
});
$().ready(function() {
    $("#register_form").validate();
});
</script>




<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write(
        "<script src='${ctx}/ace-master/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {
        $(document).on('click', '.toolbar a[data-target]', function(e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');
            $(target).addClass('visible');
        });
    });

    jQuery(function($) {
        $('#btn-login-dark').on('click', function(e) {
            $('body').attr('class', 'login-layout');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-light').on('click', function(e) {
            $('body').attr('class', 'login-layout light-login');
            $('#id-text2').attr('class', 'grey');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-blur').on('click', function(e) {
            $('body').attr('class', 'login-layout blur-login');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'light-blue');

            e.preventDefault();
        });

    });
</script>

<script>
    layui.use(['element','jquery','layer'],function () {
        var element=layui.element;
        var jquery=layui.jquery;
        var layer=layui.layer;
    })

    $('input[id=login_username]').blur(function () {

        var name=$('input[id=login_username]').val();

        var obj={
            username:name
        }
        $.ajax({
            url:'${ctx}/user/checkname',
            type:'post',
            contentType:'application/json',
            data:JSON.stringify(obj),
            success:function (data) {
                if(data.code==2000){
                    layer.msg('用户名可使用')

                }
                else{
                    layer.msg('用户名不可使用')
                }
            }

        })

    });

    $('input[id=login_checkpwd]').blur(function () {
        var checkpwd=input[id=login_checkpwd].val();
        var pwd=input[id=login_pwd].val();

        if(checkpwd!=pwd){
            lay.msg('密码不一致')
        }
    })

</script>
</body>
</html>
