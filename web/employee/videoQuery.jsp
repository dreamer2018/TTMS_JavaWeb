<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/1
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
                        <li><a href="javascript:void(0);">首页</a></li>
                        <li><a href="javascript:void(0);">退票</a></li>
                    </ul>
                </div>
                <!-- 面板 编辑 开始 -->
                <!-- 面板 编辑 结束 -->
                <div class="panel panel-default mb0">
                    <div class="panel-heading"> 退票 </div>
                    <div class="panel-body">
                        <div class="container-fluid mb0 ">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-6"></div>
                                <div class="col-md-4"></div>
                            </div>
                        </div>
                        <form class="form-horizontal">
                            <div class="form-group clearfix ">
                                <label class="col-sm-3 control-label bk-lh30 pt0">类型：</label>
                                <div class="col-sm-9">
                                    <select name="" id="" class="form-control bk-valign-top">
                                        <option value="选择项1">选择项1</option>
                                        <option value="选择项2">选择项2</option>
                                        <option value="选择项3">选择项3</option>
                                        <option value="选择项4">选择项4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group clearfix ">
                                <label class="col-sm-3 control-label bk-lh30 pt0">语言：</label>
                                <div class="col-sm-9">
                                    <select name="" id="" class="form-control bk-valign-top">
                                        <option value="选择项1">选择项1</option>
                                        <option value="选择项2">选择项2</option>
                                        <option value="选择项3">选择项3</option>
                                        <option value="选择项4">选择项4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group clearfix ">
                                <label class="col-sm-3 control-label bk-lh30 pt0">等级：</label>
                                <div class="col-sm-9">
                                    <select name="" id="" class="form-control bk-valign-top">
                                        <option value="选择项1">选择项1</option>
                                        <option value="选择项2">选择项2</option>
                                        <option value="选择项3">选择项3</option>
                                        <option value="选择项4">选择项4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group clearfix ">
                                <label class="col-sm-3 control-label bk-lh30 pt0">时长：</label>
                                <div class="col-sm-9">
                                    <select name="" id="" class="form-control bk-valign-top">
                                        <option value="选择项1">选择项1</option>
                                        <option value="选择项2">选择项2</option>
                                        <option value="选择项3">选择项3</option>
                                        <option value="选择项4">选择项4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group clearfix ">
                                <label class="col-sm-3 control-label bk-lh30 pt0">票价：</label>
                                <div class="col-sm-9">
                                    <select name="" id="" class="form-control bk-valign-top">
                                        <option value="选择项1">选择项1</option>
                                        <option value="选择项2">选择项2</option>
                                        <option value="选择项3">选择项3</option>
                                        <option value="选择项4">选择项4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button type="button" class="king-btn mr10  king-success">查询</button>
                                    <button type="button" class="king-btn king-default ">取消</button>
                                </div>
                            </div>
                            <section>
                                <div class="form-group clearfix">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <div class="bk-horizontal-line"></div>
                                    </div>
                                </div>
                            </section>
                        </form>
                        <table class="table mb0 pr15 ranger-box2 table-striped table-bordered table-header-bg table-out-bordered table-hover  table-striped table-bordered table-header-bg table-out-bordered table-hover ">
                            <thead>
                            <tr>
                                <th style="width: 70px;">#</th>
                                <th style="width: 15%;">名称</th>
                                <th style="width: 15%;">位置</th>
                                <th style="width: 15%;">日期</th>
                                <th style="width: 15%;">类型</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td style="width: 70px;">1</td>
                                <td style="width: 15%;">Ravi Kumar</td>
                                <td style="width: 15%;">India</td>
                                <td style="width: 15%;">23/12/2012</td>
                                <td style="width: 15%;">Paid</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">2</td>
                                <td style="width: 15%;">Ravi Kumar</td>
                                <td style="width: 15%;">India</td>
                                <td style="width: 15%;">23/12/2012</td>
                                <td style="width: 15%;">Paid</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">3</td>
                                <td style="width: 15%;">Ravi Kumar</td>
                                <td style="width: 15%;">India</td>
                                <td style="width: 15%;">23/12/2012</td>
                                <td style="width: 15%;">Paid</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">4</td>
                                <td style="width: 15%;">Ravi Kumar</td>
                                <td style="width: 15%;">India</td>
                                <td style="width: 15%;">23/12/2012</td>
                                <td style="width: 15%;">Paid</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">5</td>
                                <td style="width: 15%;">Ravi Kumar</td>
                                <td style="width: 15%;">India</td>
                                <td style="width: 15%;">23/12/2012</td>
                                <td style="width: 15%;">Paid</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 70px;">6</td>
                                <td style="width: 15%;">Ravi Kumar</td>
                                <td style="width: 15%;">India</td>
                                <td style="width: 15%;">23/12/2012</td>
                                <td style="width: 15%;">Paid</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <template id="header_tpl_14962190480172">
                            <tr>
                                <th style="width: 70px;">#index#</th>
                                <th style="width: 15%;">#name#</th>
                                <th style="width: 15%;">#position#</th>
                                <th style="width: 15%;">#date#</th>
                                <th style="width: 15%;">#type#</th>
                                <th>操作</th>
                            </tr>
                        </template>
                        <template id="tpl_14962190480172">
                            <tr>
                                <td style="width: 70px;">#index#</td>
                                <td style="width: 15%;">#name#</td>
                                <td style="width: 15%;">#position#</td>
                                <td style="width: 15%;">#date#</td>
                                <td style="width: 15%;">#type#</td>
                                <td>
                                    <button class="btn btn-xs btn-success"> <i class="glyphicon glyphicon-ok"></i> </button>
                                    <button class="btn btn-xs btn-warning"> <i class="glyphicon glyphicon-edit"></i> </button>
                                    <button class="btn btn-xs btn-danger"> <i class="glyphicon glyphicon-remove"></i> </button>
                                </td>
                            </tr>
                        </template>
                        <!-- 设置面板End -->
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
<script>
    $(function(){
        function renderTpl(str, cfg) {
            var re = /(#(.+?)#)/g;

            return str.replace(re, function() {
                var val = cfg[arguments[2]]+'';
                if(typeof val == 'undefined') {
                    val = '';
                }
                return val;
            });
        }

        // 异步请求后台数据
        $.ajax({
            url: 'https://o.qcloud.com/static_api/v3/components/table7/data.json',
            type: 'GET',
            success: function(res){
                var _html = ' ';
                var list = res.items;
                var tpl = $('#tpl_14962190480172').html();
                var headerTpl =  $('#header_tpl_14962190480172').html();
                for (var i=0,len=list.length; i < len; i++){
                    var item = list[i];
                    _html += renderTpl(tpl, item)
                }
                $('.ranger-box2 tbody').html(_html);
                $('.ranger-box2 thead').html(renderTpl(headerTpl,res.catalogues));
            }
        });
    });
</script>
</body>

</html>