<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>提示消息</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="/html/include/studentHeader.jsp" %>

<!-- 报名完成-->
<div style="width:97.5%;min-height: 750px;margin: 15px auto;">
    <div style="margin: 0px auto;background-color: #F5E6B1;border: 1px solid #ffc533;padding: 15px 62px;">
        <p><strong>提示信息:</strong></p>
        <p><strong style="color: #ff6a5e;font-size: 22px;">${msg}</strong>
        </p>
    </div>
</div>
<!--底部-->
<%@ include file="/html/include/studentFooter.jsp" %>