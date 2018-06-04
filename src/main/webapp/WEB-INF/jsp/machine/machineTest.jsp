<%--
  Created by IntelliJ IDEA.
  User: qull
  Date: 2018/6/3
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/head.jsp" %>
    <title>设备检测</title>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            当前位置：设备检测模块&nbsp;> &nbsp;参数录入
        </div>
        <div class="col-md-6">
                <h5 class="text-left text-info">
                    欢迎进入发电机故障诊断中心，请详细填写下列数据，数据由在线监测得到。
                </h5>
                <form class="form-inline" role="form" action="${basePath}machine/machineTest" method="post">
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg1" class="form-label">冷却水流量:</label>
                        <input class="form-control" id="arg1" name="arg1" type="text" />
                    </div>
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg2" class="form-label">转子绕组绝缘电阻值:</label>
                        <input class="form-control" id="arg2" type="text" />
                    </div>


                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg3" class="form-label">冷却水压力:</label>
                        <input class="form-control" id="arg3" type="text" />
                    </div>
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg4" class="form-label">静子相电压:</label>
                        <input class="form-control" id="arg4" type="text" />
                    </div>

                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg5" class="form-label">内冷水箱氢压:</label>
                        <input class="form-control" id="arg5" type="text" />
                    </div>
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg6" class="form-label">机端PT开口三角零序电压:</label>
                        <input class="form-control" id="arg6" type="text" />
                    </div>

                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg7" class="form-label">发电机氢压:</label>
                        <input class="form-control" id="arg7" type="text" />
                    </div>
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg8" class="form-label">绝缘放电强度:</label>
                        <input class="form-control" id="arg8" type="text" />
                    </div>

                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg9" class="form-label">检漏仪绝缘电阻:</label>
                        <input class="form-control" id="arg9" type="text" />
                    </div>
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg10" class="form-label">静子绕组出水湿度:</label>
                        <input class="form-control" id="arg10" type="text" />
                    </div>

                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg11" class="form-label">相对湿度:</label>
                        <input class="form-control" id="arg11" type="text" />
                    </div>
                    <div class="form-group col-sm-6" style="margin-top: 20px">
                        <label for="arg12" class="form-label">静子绕组湿度:</label>
                        <input class="form-control" id="arg12" type="text" />
                    </div>

                    <div class="form-group col-sm-12" style="margin-top: 20px">
                        <%--<div class="col-sm-offset-5">--%>
                        <center>
                            <button type="submit" class="btn btn-info btn-default">诊断</button>
                        </center>
                        <%--</div>--%>
                    </div>
                </form>
        </div>
    </div>
</div>


</body>
</html>
