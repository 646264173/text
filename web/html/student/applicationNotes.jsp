<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>单招新闻页</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<!--导航栏，整个导航栏都选择了弹性布局-->
<%@ include file="/html/include/studentHeader.jsp" %>

<!-- 报名须知内容 -->
<div style="margin-top: 10px;min-height: 770px">
    <div style="width:97%;margin: 0 auto;height:550px;border:1px solid #c4c7ca;background-color: #ffffff;overflow: scroll;padding: 10px 20px">
        <p style="text-align: center;margin-top: 5px;font-size: 16px;color: #635f5f;"><strong>${news.title}</strong></p>
        <p style="text-align: center;margin-top: 5px;font-size: 16px;color: #635f5f;">${news.publishDate}</p>
        <!--font-weight: bold;-->
        <div style="margin: 0px auto">
            <p>${news.content}</p>
        </div>
    </div>
</div>
<!--底部-->
<%@ include file="/html/include/studentFooter.jsp" %>
