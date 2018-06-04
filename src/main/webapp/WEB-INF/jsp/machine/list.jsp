<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/2
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="../common/head.jsp" %>
    <title>设备管理</title>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            当前位置：设备信息&nbsp;> &nbsp;设备管理
        </div>
        <div class="col-md-8">
            <table class="table table-bordered table-condensed">
                <thead>
                <tr>
                    <th>设备名称</th>
                    <th>设备编号</th>
                    <th>电压等级</th>
                    <th>设备铭牌</th>
                    <th>历史信息</th>
                    <th>创建时间</th>
                    <th colspan="2">操作</th>

                </thead>
                <tbody>
                <c:forEach items="${machineList}" var="machine">
                    <tr>
                        <td>${machine.machineName}</td>
                        <td>${machine.serialNumber}</td>
                        <td>${machine.voltageGrade}</td>
                        <td>${machine.brand}</td>
                        <td>无</td>
                        <td>${machine.createTime}</td>
                        <td><a class="btn btn-warning" href="${basePath}machine/update/${machine.id}">修改</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                            <a class="btn btn-danger" href="${basePath}machine/delete/${machine.id}">删除</a>
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