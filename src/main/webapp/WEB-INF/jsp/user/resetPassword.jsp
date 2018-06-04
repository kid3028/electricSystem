<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/3
  Time: 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/head.jsp" %>
    <title>重置密码</title>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            当前位置：个人信息&nbsp;> &nbsp;重置密码
        </div>
        <div class="col-md-6">
            <form class="form-horizontal" role="form" action="${basePath}user/resetPassword" method="post">

                <input class="form-control" id="userName" name="userName" value="${current_user}" type="hidden"/>

                <div class="form-group">
                    <label for="oldPassword" class="col-sm-2 control-label">旧密码:</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="oldPassword" name="oldPassword" type="password"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="newPassword" class="col-sm-2 control-label">新密码:</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="newPassword" name="newPassword" type="password"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="newPassword_repeat" class="col-sm-2 control-label">重复新密码:</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="newPassword_repeat" name="newPassword_repeat" type="password"/>
                    </div>
                </div>

                <center>
                <button type="submit" class="btn btn-info btn-default">修改</button>
                </center>
            </form>
        </div>
    </div>
</div>
</body>
</html>
