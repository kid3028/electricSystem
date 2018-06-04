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
            当前位置：设备管理&nbsp;> &nbsp;设备修改/新增
        </div>
        <div class="col-md-6">
            <form role="form" action="${basePath}machine/save" method="post">
                <input class="form-control" id="id" name="id" value="${machine.id}" type="hidden" />
                <div class="form-group">
                    <label for="machineName">设备名称:</label><input class="form-control" id="machineName" name="machineName" value="${machine.machineName}" type="text" />
                </div>

                <div class="form-group">
                    <label for="serialNumber">设备编号:</label><input class="form-control" id="serialNumber" name="serialNumber" value="${machine.serialNumber}" type="text" />
                </div>

                <div class="form-group">
                    <label for="voltageGrade">电压等级:</label><input class="form-control" id="voltageGrade" name="voltageGrade" value="${machine.voltageGrade}" type="text" />
                </div>

                <div class="form-group">
                    <label for="brand">设备铭牌:</label><input class="form-control" id="brand" name="brand" value="${machine.brand}" type="text" />
                </div>
                <center><button type="submit" class="btn btn-default btn-info">保存</button></center>
            </form>
        </div>
    </div>
</div>

</body>
</html>
