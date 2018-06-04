<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/3
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="./common/head.jsp" %>
    <script type="text/javascript">
        $(function () {
            var height = document.documentElement.clientHeight;
            document.getElementById('iframe-page-content').style.height = height + 'px';
        });
        var menuClick = function (menuUrl) {
            $("#iframe-page-content").attr('src', menuUrl);
        };
    </script>
    <title>电力设备故障检测和预警系统</title>
</head>
<body>
<div class="container">
    <div class="row clearfix" style="width: 100%; height:200px">
        <div class="col-md-12 column">
            <h2 class="text-info text-left" style="padding: auto">
                电力设备故障检测和预警系统
            </h2>
        </div>
    </div>
</div>
<div style="width: 100%">
    <!-- 左侧菜单栏 -->
    <div id="main-container">
        <div id="sidebar" class="col-md-2 column">
            <!-- 创建菜单树 -->
            <div class="col-md-12">
                <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">

                    <li>

                        <a href="#user" class="nav-header collapsed" data-toggle="collapse">

                            <i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;个人信息

                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>

                        </a>

                        <ul id="user" class="nav nav-list collapse secondmenu" style="height: 0px;">

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}user/detail/${current_user}')"><i
                                    class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;个人资料</a></li>

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}user/list')"><i
                                    class="glyphicon glyphicon-list"></i>&nbsp;&nbsp;员工列表</a></li>

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}user/save')"><i
                                    class="glyphicon glyphicon-plus"></i>&nbsp;&nbsp;新增员工</a></li>

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}user/resetPassword')"><i
                                    class="glyphicon glyphicon-pencil"></i>&nbsp;&nbsp;重置密码</a></li>
                        </ul>

                    </li>

                    <li>

                        <a href="#machine" class="nav-header collapsed" data-toggle="collapse">

                            <i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;设备信息

                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>

                        </a>

                        <ul id="machine" class="nav nav-list collapse secondmenu" style="height: 0px;">

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}machine/list')"><i
                                    class="glyphicon glyphicon-list"></i>&nbsp;&nbsp;设备管理</a></li>

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}machine/save')"><i
                                    class="glyphicon glyphicon-plus"></i>&nbsp;&nbsp;设备新增</a></li>
                        </ul>

                    </li>

                    <li>

                        <a href="#machineTest" class="nav-header collapsed" data-toggle="collapse">

                            <i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;设备监测模块

                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>

                        </a>

                        <ul id="machineTest" class="nav nav-list collapse secondmenu" style="height: 0px;">

                            &nbsp;&nbsp;&nbsp;&nbsp;<li><a href="#" onclick="menuClick('${basePath}machine/machineTest')"><i
                                    class="glyphicon glyphicon-list"></i>&nbsp;&nbsp;参数录入</a></li>

                        </ul>

                    </li>


                </ul>

            </div>
        </div>
        <div class="col-md-10 column">
            <div class="breadcrumbs pull-right" id="breadcrumbs">
                <!-- 面包屑导航 -->
                <ul class="breadcrumb">
                    <li class="active">当前用户:${current_user}</li>
                    <li class="active"><a href="logout">退出系统</a></li>
                </ul>
            </div>

            <!-- 内容展示页 -->
            <div>
                <iframe id="iframe-page-content" src="${basePath}user/detail/${current_user}" width="100%" height="100%" frameborder="no"
                        border="0" marginwidth="0"

                        marginheight=" 0" scrolling="no" allowtransparency="yes"></iframe>
            </div>
        </div><!-- /.main-content -->
    </div><!-- /.main-container -->
</div>
</body>
</html>
