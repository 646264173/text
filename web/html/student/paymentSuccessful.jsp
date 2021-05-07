<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>缴费成功</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<style>
    .div_x {
        font-size: 12px;
        /*font-weight: bold;*/
        width: 95%;
        margin: 0px auto;
        border-bottom: 1px dotted #CCCCCC;
        border-top: 1px dotted #CCCCCC;
        padding: 10px 0px;
    }
</style>
<%@ include file="/html/include/studentHeader.jsp" %>

<!-- 缴费成功内容 -->
<div style="width:1200px;margin: 50px auto;min-height: 680px">
    <div style="width:98.5%;margin: 15px auto;border-bottom: 1px solid #cccccc;padding: 5px 0;">
        <strong style="color: #3366FF;font-size: 20px">报名缴费</strong>
    </div>
    <div style="width:98.5%;margin: 15px auto;border: 1px solid rgba(255, 204, 0, 1);background-color:#F5E6B1;padding: 10px 5px;">
        <P style="margin:3px;">根据物价局文件规定，单招注册报名<span style="color:red;font-weight: bold">考务费用按照120元</span>收取。</P>
    </div>
    <div style="width:98.5%;margin: 0px auto;background-color:#ffffff;border: 1px solid rgba(204, 204, 204, 1);height: 300px">
        <div style="background-color:#EAFFEA;padding: 20px;">
            <img style="margin-right: 28px" src="images/systemApplication/correct.png" height="30" width="30"/>
            您已成功缴费
        </div>
        <div style="padding-left: 85px;margin: 16px 0px;font-size: 12px;">
            <p>缴费金额：<strong style="color:#a90000">${pay.price}</strong></p>
            <p>缴费时间：<strong style="color:#a90000">${pay.inputDate}</strong></p>
        </div>
        <div class="div_x">
            <img src="images/systemApplication/safe.png" height="18" width="18"/>
            <strong style="color: rgba(255,136,15,0.65);padding-right: 10px">安全提醒:</strong><span
                style="color: rgba(203,137,22,0.8)">缴费后，</span>
            <span style="color: #a90000">用QQ给您发送链接办理退款的都是骗子！</span>
            <span style="color: rgba(203,137,22,0.8)">本网站不存在系统升级，缴费异常等问题，谨防假冒客服诈骗电话</span>
        </div>
    </div>
</div>

<%@ include file="/html/include/studentFooter.jsp" %>