<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>录取查询</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<!--导航栏，整个导航栏都选择了弹性布局-->
<%@ include file="/html/include/studentHeader.jsp" %>
<!-- 录取查询内容 -->
<div style="min-height: 770px;width:97.5%;margin: 0 auto">
    <div style="margin: 10px auto;border: 1px solid #cccccc;background-color: #e3e3e3;padding: 5px 5px;">
        <P style="margin:3px">提示信息</P>
    </div>
    <div style="height:550px;margin: 15px auto;">
        <div style="margin: 0px auto;background-color: #F5E6B1;border: 1px solid rgba(255, 204, 0, 1);padding: 30px 5px;">
            <p style="color:#C69357">
                <c:if test="${examinee.acceptStatus == 1}">
                    <strong>考生:${examinee.name}&nbsp;</strong>身份证号:${regist.identityNumber}<br>
                    <strong style="color: red">很遗憾，您未被录取</strong><br>
                    如有成绩疑问，请与招生办老师联系或<a href="scoreQuery">查询成绩</a>
                </c:if>
                <c:if test="${ksxx.acceptStatus == 2}">
                    <strong>考生:${examinee.name}&nbsp;</strong>身份证号:${regist.identityNumber}<br>
                    <strong style="color: red">恭喜您被拟录取到${major.majorName}</strong><br>
                    如有成绩疑问，请与招生办老师联系或<a href="scoreQuery">查询成绩</a>
                </c:if>
            </p>
        </div>
    </div>
</div>
<!--底部-->
<%@ include file="/html/include/studentFooter.jsp" %>
