<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/1
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- 若您需要使用Kendo UI Professional，请联系版权人获得合法的授权或许可。 -->
    <!-- Bootstrap css -->
    <link href="https://o.qcloud.com/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <!-- kendo ui css -->
    <link href="https://o.qcloud.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css" rel="stylesheet">
    <link href="https://o.qcloud.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css" rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://o.qcloud.com/static_api/v3/assets/fontawesome/css/font-awesome.css" rel="stylesheet">
    <!--蓝鲸提供的公用样式库 -->
    <link href="https://o.qcloud.com/static_api/v3/bk/css/bk.css?v=1.0.1" rel="stylesheet">
    <link href="https://o.qcloud.com/static_api/v3/bk/css/bk_pack.css" rel="stylesheet">
    <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
    <script src="https://o.qcloud.com/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
    <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://o.qcloud.com/static_api/v3/assets/bootstrap-3.3.4/js/bootstrap.min.js"></script>
    <!-- 包括所有kendoui的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://o.qcloud.com/static_api/v3/assets/kendoui-2015.2.624/js/kendo.all.min.js"></script>
    <script src="https://o.qcloud.com/static_api/v3/bk/js/bk.js"></script>
    <!-- 数据埋点统计 -->
    <script src="https://o.qcloud.com/static_api/analysis.js"></script>
    <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
    <!--[if lt IE 9]><script src="https://o.qcloud.com/static_api/v3/assets/js/html5shiv.min.js"></script><script src="https://o.qcloud.com/static_api/v3/assets/js/respond.min.js"></script><![endif]-->
</head>

<body class="bg-white" data-bg-color="bg-white">
<div class="king-page-box">
    <div class="king-layout1-header">
        <nav>
            <div class="king-header2 navbar navbar-blue  f14">
                <div class="nav-container">
                    <div class="navbar-header">
                        <button class="pull-right visible-xs navbar-toggle collapsed navbar-toggle-sm" type="button" data-toggle="collapse" data-target="#king-header2-navbar-collapse"> <i class="fa fa-fw fa-ellipsis-v">                    </i> </button>
                        <a class="navbar-brand" href="javascript:;" title="故障预警系统">
                            <img src="https://o.qcloud.com/static_api/v3/bk/images/logo.png" alt="" class="logo" style="margin-top:-5px;"> </a>
                    </div>
                    <div class="navbar-collapse collapse" id="king-header2-navbar-collapse">
                        <ul class="nav navbar-nav navbar-left hidden-sm"> </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-cog">                            </i>
                                    <span class="ml10"> 管理配置 </span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <span> admin </span>
                                    <span class="avatar">
                                            <img src="https://o.qcloud.com/static_api/v3/components/horizontal_nav9/images/avatar.jpg"> </span>
                                </a>
                            </li>
                            <li> <a href="javascript:void(0)">                            退出                        </a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <div class="king-layout1-main clearfix">
        <!-- sidebar start -->
        <div class="king-layout1-sidebar" style="width:216px;">
            <nav style="height:100%;" class="   f14">
                <div class="king-vertical-nav4">
                    <div class="sidebar-inner">
                        <ul class="navi">
                            <li class="has_submenu current open c-open active">
                                <a href="javascript:void(0);"> <i class="fa fa-gear ">                        </i>
                                    <span>常用操作</span>
                                    <span class="pull-right"><i class="fa fa-angle-down"></i></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="/employee/tickets">售票<i class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/employee/refunds">退票<i class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/employee/videoQuery">影片查询<i class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/employee/play">演出计划查询<i class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/employee/statistics">统计<i class="fa fa-chevron-right pull-right"></i></a></li>
                                </ul>
                            </li>
                            <li class="has_submenu current open c-open">
                                <a href="javascript:void(0);"> <i class="fa fa-wrench ">                        </i>
                                    <span>系统管理</span>
                                    <span class="pull-right"><i class="fa fa-angle-down"></i></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="/employee/changePwd">更改密码<i class="fa fa-chevron-right pull-right"></i></a></li>
                                </ul>
                            </li>                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <!-- sidebar end -->
        <!-- content start -->
        <div class="king-content-wrap">
            <div class="king-layout1-content" style="margin-left: 216px;">
                <!-- <div class="king-page-topbar pl20 pr20 {{ marginStyle }}"> -->
                <div class="king-page-topbar ml15">
                    <h3 class="king-topbar-title mb0">
                        <span></span>
                    </h3>
                    <ul class="breadcrumb king-breadcrumb pl0 bg-transparent">
                        <li><a href="javascript:void(0);">首页</a></li>
                        <li><a href="javascript:void(0);">修改密码</a></li>
                    </ul>
                </div>
                <!-- 面板 编辑 开始 -->
                <!-- 面板 编辑 结束 -->
                <div class="panel panel-default mb0">
                    <div class="panel-heading"> 修改密码 </div>
                    <div class="panel-body">
                        <div class="container-fluid mb0 ">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-6">
                                    <form class="form-horizontal" method="post" action="/employee/changePwd">
                                        <div class="form-group clearfix ">
                                            <label class="col-sm-3 control-label bk-lh30 pt0">原始密码：</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control bk-valign-top" id="" placeholder="请输入密码" name="oldPassword">
                                                <p class="help-block"></p>
                                            </div>
                                        </div>
                                        <div class="form-group clearfix ">
                                            <label class="col-sm-3 control-label bk-lh30 pt0">新密码：</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control bk-valign-top" id="" placeholder="请输入密码" name="newPassword1">
                                                <p class="help-block"></p>
                                            </div>
                                        </div>
                                        <div class="form-group clearfix ">
                                            <label class="col-sm-3 control-label bk-lh30 pt0">密码确认：</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control bk-valign-top" id="" placeholder="请输入密码" name="newPassword2">
                                                <p class="help-block"></p>
                                            </div>
                                        </div>
                                        <div class="form-group clearfix">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <button type="submit" class="king-btn mr10  king-success">提交</button>
                                                <button type="reset" class="king-btn king-default ">取消</button>
                                            </div>

                                        </div>
                                        <div class="form-group clearfix">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <span>
                                                    <%
                                                        if(request.getAttribute("reason")!=null)
                                                            out.println(request.getAttribute("reason"));
                                                    %>
                                                </span>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content end -->
    </div>
</div>
<script>
    $(function(){
        var li = $('.navi li');
        li.each(function(){
            $(this).click(function(){
                if( $(this).hasClass('c-open')){
                    $(this).find('ul').slideUp(350);
                    $(this).removeClass('c-open');
                }else{
                    $(this).find('ul').slideDown(350);
                    $(this).addClass('c-open');
                }
            })
        });
    })
</script>
</body>

</html>
