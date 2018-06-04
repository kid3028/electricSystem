<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/3
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common/head.jsp"%>
    <title>错误</title>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="alert alert-dismissable alert-danger">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4>
                    错误!
                </h4> <strong>${msg}</strong><a href="/main" class="alert-link">3s后自动跳转</a>
            </div>
        </div>
    </div>
</div>

<script>
    setTimeout('location.href="/main"', 3000);
</script>
</body>
</html>
