<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="../common/head.jsp" %>
    <title>用户列表</title>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            当前位置：个人信息&nbsp;> &nbsp;员工列表
        </div>
        <div class="col-md-8">
            <table class="table table-bordered table-condensed">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>姓名</th>
                    <th>工号</th>
                    <th>部门</th>
                    <th>手机号</th>
                    <th>年龄</th>
                    <th>职位</th>
                    <th colspan="2">操作</th>

                </thead>
                <tbody>
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.userName}</td>
                        <td>${user.fullName}</td>
                        <td>${user.empNumber}</td>
                        <td>${user.dept}</td>
                        <td>${user.phone}</td>
                        <td>${user.age}</td>
                        <td><c:choose><c:when test="${user.isMgn eq '1'}">管理员</c:when><c:otherwise>普通员工</c:otherwise></c:choose></td>
                        <td><a class="btn btn-warning" href="${basePath}user/update/${user.id}">修改</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                            <a class="btn btn-danger" href="${basePath}user/delete/${user.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>