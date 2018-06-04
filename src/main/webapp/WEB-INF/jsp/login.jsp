<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/2
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="common/head.jsp" %>
    <title>系统登录</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form class="form-horizontal" role="form" action="${basePath}login" method="post">
                <div class="form-group">
                    <label for="userName" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="userName" name="userName" type="text"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="password" name="password" type="password"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="validCode" class="col-sm-2 control-label">验证码</label>
                    <div class="col-sm-6">
                        <input class="form-control" id="validCode" name="validCode" type="text"/>
                    </div>
                    <div class="col-sm-6">
                        <img src="">
                    </div>
                </div>

                <center>
                    <button type="submit" class="btn btn-info btn-default">登录</button>
                </center>

            </form>
        </div>
    </div>
</div>
</body>
</html>
