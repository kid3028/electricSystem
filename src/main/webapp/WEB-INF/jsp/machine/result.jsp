<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/3
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/head.jsp"%>
    <title>检测结果</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            当前位置：设备检测模块&nbsp;> &nbsp;检测结果
        </div>
        <div class="col-md-6">
            <h3 class="text-info">${result}</h3>
        </div>
    </div>
</div>
</body>
</html>
