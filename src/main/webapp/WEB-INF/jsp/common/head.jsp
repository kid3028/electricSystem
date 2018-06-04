<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.bootcss.com/jquery-validate/1.17.0/jquery.validate.min.js"></script>
<script src="https://cdn.bootcss.com/jquery-validate/1.17.0/additional-methods.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/alert.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/collapse.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/dropdown.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/tab.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/tooltip.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap-theme.min.css" rel="stylesheet">
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
    request.setAttribute("basePath", basePath);
%>