<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>教师端-首页</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet"/>
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet"/>
</head>
<body>
<div id="wrapper">
    <%@ include file="/html/include/teacherHeader.jsp" %>
    <!-- /. 左操作菜单 -->
    <div id="page-wrapper">
        <div id="page-inner2">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">首页</h4>
                </div>
            </div>
            <div style="text-align: center;padding: 250px 0">
                <h1 style="color: #00ADFF;font-weight: bold;font-size: 50px">欢迎使用管理后台</h1>
                <h4 style="color: #00ADFF;">请点击左侧菜单进行相关操作</h4>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<%@ include file="/html/include/teacherFooter.jsp" %>