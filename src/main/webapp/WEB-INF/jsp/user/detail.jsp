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
    <title>个人信息</title>
 
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            当前位置：个人信息&nbsp;> &nbsp;个人资料
        </div>
        <div class="col-md-4">
            <table class="table">
                <thead>
                <tr>
                    <th>用户名:</th>
                    <th>${user.userName}</th>
                </tr>
                <tr>
                    <th>员工姓名:</th>
                    <th>${user.fullName}</th>
                </tr>
                <tr>
                    <th>员工工号:</th>
                    <th>${user.empNumber}</th>
                </tr>
                <tr>
                    <th>员工部门:</th>
                    <th>${user.dept}</th>
                </tr>
                <tr>
                    <th>联系电话:</th>
                    <th>${user.phone}</th>
                </tr>
                <tr>
                    <th>监测范围:</th>
                    <th></th>
                </tr>

                </thead>

            </table>
        </div>
    </div>
</div>


</body>
</html>
