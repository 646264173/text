<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>微信缴费</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="/html/include/studentHeader.jsp" %>

<!-- 微信缴费内容 -->
<div style="width:52%;margin: 60px auto;min-height:680px">
    <div style="border:1px solid #a9a9a9;height: 480px">
        <div style="background-color:#e0ebf0;padding: 10px 20px">
            <p style="color: #006600;font-size: 10px;font-weight: bold">沈阳北软信息职业技术学院单独招生报名缴费订单支付</p>
            <p style="font-size: 10px">
                订单号:123456987456321_zr 产品名称:沈阳北软信息职业技术学院单独招生报名缴费
                <span style="float: right">支付金额:<span style="color: #CC0000;font-weight: bold">￥120.0</span></span>
            </p>
        </div>
        <div style="padding: 10px 50px">
            微信扫码支付
        </div>
        <div style="text-align: center">
            <img src="images/qr.png" height="280" width="280"/>
        </div>
        <button type="button" class="btn btn-info" style="float: right;margin-right: 40px;margin-top: 20px;" onclick="pay()" >点击模拟缴费</button>
    </div>
</div>

<script>
    function pay(){
        $.ajax({
            url:'pay',
            type:'post',
            dataType:'json',
            success:function (data) {
                if (data == true) {
                    location.href = "paySuccess";
                } else {
                    location.href = "msg?msg=支付失败或已支付！有问题请联系管理员！<a href='pay'>点击返回支付</a> ";
                }
            }
        });

    }
    </script>
<%@include file="/html/include/studentFooter.jsp" %>