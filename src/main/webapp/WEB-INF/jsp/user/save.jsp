<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/2
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/head.jsp" %>
    <title>资料修改</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            当前位置：个人信息&nbsp;> &nbsp;资料修改/用户新增
        </div>
        <div class="col-md-6">
            <form role="form" action="${basePath}user/save" method="post">
                <input class="form-control" id="id" name="id" value="${user.id}" type="hidden" />
                <div class="form-group">
                    <label for="userName">用户名:</label><input class="form-control" id="userName" name="userName" value="${user.userName}" type="text" />
                </div>
                <div class="form-group">
                    <label for="fullName">员工姓名:</label><input class="form-control" id="fullName" name="fullName" value="${user.fullName}" type="text" />
                </div>
                <div class="form-group">
                    <label for="empNumber">员工工号:</label><input class="form-control" id="empNumber" name="empNumber" value="${user.empNumber}" type="text" />
                </div>

                <div class="form-group">
                    <label for="dept">员工部门:</label><input class="form-control" id="dept" name="dept" value="${user.dept}" type="text" />
                </div>
                <div class="form-group">
                    <label for="isMgn">职位:
                    <select class="form-control" id="isMgn" name="isMgn"selected="${user.isMgn}">
                        <option value="1">管理员</option>
                        <option value="0">普通员工</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="phone">联系电话:</label><input class="form-control" id="phone" name="phone" value="${user.phone}" type="text" />
                </div>
                <div class="form-group">
                    <label for="age">员工年龄:</label><input class="form-control" id="age" name="age" value="${user.age}" type="text" />
                </div>

                <center><button type="submit" class="btn btn-default btn-info">保存</button></center>

            </form>
        </div>
    </div>
</div>

</body>
</html>
