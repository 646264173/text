<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>应用系统</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<style>
    .div_n {
        text-align: center;
        border: 1px solid #e8e6e6;
        padding: 25px 0px 10px 0;
        margin: 15px 25px;
    }

    .div_n > p {
        padding: 5px 0px;
    }
</style>
<body style="background: #F5F5F5">
<%@ include file="/html/include/studentHeader.jsp" %>
<!-- 应用系统内容 -->
<div>
    <!-- 提示文字 -->
    <div style="width:98.5%;margin: 10px 14px 5px 14px;border: 1px solid #cccccc;background-color: #E3E3E3;padding: 5px 5px;">
        <P style="margin:3px">系统应用</P>
    </div>
    <!-- 系统模块 -->
    <div style="width:98.5%;min-height: 700px;margin: 0px 14px 5px 14px;">
        <div class="col-sm-12" style="padding:10px 55px 100px 55px;background-color: #ffffff;border: 2px solid #e8e7e7;">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <div class="row show-grid">
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/information.png" height="48" width="48"/>
                            <p><a href="edit">个人信息</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/zm_printing.png" height="48" width="48"/>
                            <p><a href="#">打印准考证</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/payment.png" height="48" width="48"/>
                            <p><a href="#">网上缴费</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/query.png" height="48" width="48"/>
                            <p><a href="#">成绩查询</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/admission.png" height="48" width="48"/>
                            <p><a href="#">录取查询</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/signout.png" height="48" width="48"/>
                            <p><a href="exit">退出登录</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/html/include/studentFooter.jsp" %>