<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.xupt.cs.se.model.Studio" %>
<%@ page import="edu.xupt.cs.se.model.Seat" %><%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2017/6/1
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- 若您需要使用Kendo UI Professional，请联系版权人获得合法的授权或许可。 -->
    <!-- Bootstrap css -->
    <link href="https://o.qcloud.com/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <!-- kendo ui css -->
    <link href="https://o.qcloud.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css"
          rel="stylesheet">
    <link href="https://o.qcloud.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css"
          rel="stylesheet">
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
    <!--[if lt IE 9]>
    <script src="https://o.qcloud.com/static_api/v3/assets/js/html5shiv.min.js"></script>
    <script src="https://o.qcloud.com/static_api/v3/assets/js/respond.min.js"></script><![endif]-->
</head>

<body class="bg-white" data-bg-color="bg-white">
<div class="king-page-box">
    <div class="king-layout1-header">
        <nav>
            <div class="king-header2 navbar navbar-blue  f14">
                <div class="nav-container">
                    <div class="navbar-header">
                        <button class="pull-right visible-xs navbar-toggle collapsed navbar-toggle-sm" type="button"
                                data-toggle="collapse" data-target="#king-header2-navbar-collapse"><i
                                class="fa fa-fw fa-ellipsis-v"> </i></button>
                        <a class="navbar-brand" href="/managers/"><span style="font-size: 24px">光影人生</span>-影院票务管理系统</a>
                    </div>
                    <div class="navbar-collapse collapse" id="king-header2-navbar-collapse">
                        <ul class="nav navbar-nav navbar-left hidden-sm"></ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i
                                        class="fa fa-user"></i> admin <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="javascript:;"><i class="fa fa-fw fa-user"></i> 用户</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="/logout"><i class="fa fa-fw fa-power-off"></i> 退出</a>
                                    </li>
                                </ul>
                            </li>
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
                            <li class="has_submenu current open active c-open">
                                <a href="javascript:void(0);"> <i class="fa fa-gear "> </i>
                                    <span>常用操作</span>
                                    <span class="pull-right"><i class="fa fa-angle-down"></i></span>
                                </a>
                                <ul class="sub-menu" style="display: block;">
                                    <li><a href="/managers/studio/">影厅管理<i
                                            class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/managers/movie/">影片管理<i
                                            class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/managers/seat/">座位管理<i class="fa fa-chevron-right pull-right"></i></a>
                                    </li>
                                    <li><a href="/managers/schedule/">演出计划管理<i
                                            class="fa fa-chevron-right pull-right"></i></a></li>
                                    <li><a href="/managers/finance/">财务管理<i class="fa fa-chevron-right pull-right"></i></a>
                                    </li>
                                    <li><a href="/managers/booking/">票房管理<i class="fa fa-chevron-right pull-right"></i></a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has_submenu current open active c-open">
                                <a href="javascript:void(0);"> <i class="fa fa-wrench "> </i>
                                    <span>系统管理</span>
                                    <span class="pull-right"><i class="fa fa-angle-down"></i></span>
                                </a>
                                <ul class="sub-menu" style="display: block;">
                                    <li><a href="/managers/employee/">人事管理<i class="fa fa-chevron-right pull-right"></i></a>
                                    </li>
                                    <li><a href="/managers/passwd/">密码修改<i
                                            class="fa fa-chevron-right pull-right"></i></a></li>
                                </ul>
                            </li>
                        </ul>
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
                        <li><a href="/managers/">首页</a></li>
                        <li>座位管理</li>
                    </ul>
                </div>
                <div class="panel panel-default mb0">
                    <div class="panel-heading"> 座位管理</div>
                    <div class="panel-body">
                        <div style="margin-bottom:15px; margin-top: 8px">
                            <a href="/managers/seat/add/">
                                <button type="button" class="king-btn mr10  king-success">添加座位</button>
                            </a>
                        </div>
                        <hr style="margin-left: -15px; margin-right: -15px;"/>
                        <form class="form-horizontal" action="/managers/seat/" method="post">
                            <div class="container-fluid mb0 ">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group clearfix ">
                                            <label class="col-sm-3 control-label bk-lh30 pt0">演出厅：</label>
                                            <div class="col-sm-9">
                                                <select name="studio_id" id="" class="form-control bk-valign-top">
                                                    <%
                                                        ArrayList<Studio> studios = (ArrayList<Studio>) request.getAttribute("studios");
                                                        for (Studio studio : studios) {
                                                    %>
                                                    <option value="<%=studio.getId()%>"><%=studio.getName()%>
                                                    </option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group clearfix">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <button type="submit" class="king-btn mr10  king-success">查询</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>
                                </div>
                            </div>
                        </form>
                        <hr style="margin-left: -15px; margin-right: -15px; margin-top: 0"/>
                        <table class="table mb0 pr15 ranger-box2 table-striped table-bordered table-header-bg table-out-bordered table-hover  table-striped table-bordered table-header-bg table-out-bordered table-hover ">
                            <thead>
                            <tr>
                                <th style="width: 70px;">#</th>
                                <th style="width: 15%;">行</th>
                                <th style="width: 15%;">列</th>
                                <th style="width: 15%;">状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                ArrayList<Seat> seats = (ArrayList<Seat>) request.getAttribute("seats");
                                if (seats != null) {
                                    for (int i=0; i <seats.size();i++) {
                            %>
                            <tr>
                                <td style="width: 70px;"><%=i+1%></td>
                                <td style="width: 15%;"><%=seats.get(i).getRow()%></td>
                                <td style="width: 15%;"><%=seats.get(i).getCol()%></td>
                                <td style="width: 15%;"><%=seats.get(i).getStatus()%></td>
                                <td>
                                    <a href="/managers/seat/?type=delete&id=<%=seats.get(i).getId()%>"><button class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-remove"></i>
                                    </button></a>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            </tbody>
                        </table>
                        <br/>
                        <br/>
                        <div style="color: red">
                            <%
                                if (null != request.getAttribute("message")) {
                                    out.println(request.getAttribute("message"));
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content end -->
    </div>
</div>
<script>
    $(function () {
        var li = $('.navi li');
        li.each(function () {
            $(this).click(function () {
                if ($(this).hasClass('c-open')) {
                    $(this).find('ul').slideUp(350);
                    $(this).removeClass('c-open');
                } else {
                    $(this).find('ul').slideDown(350);
                    $(this).addClass('c-open');
                }
            })
        });
    })
</script>
</body>

</html>
