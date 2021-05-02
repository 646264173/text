<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>报名详情表</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<style>
    .tr {
        border-bottom: 1px solid #A0A3A5;
        height: 50px;
    }

    .tr > td {
        padding: 10px;
        border-right: 1px solid #A0A3A5;
        width: 16.6%;
    }

    table {
        width: 98%;
        margin: 0px auto;
        border: 1px solid #0f0f0f;
        background-color: #EBEFF1;
    }

    .bm_div2 {
        width: 46%;
        background-color: #ffffff;
        padding: 18px 8px;
        margin: 65px auto;
    }
</style>
<body>
<%@ include file="/html/include/studentHeader.jsp" %>
<!-- 报名详情表 -->
<div style="width:98.5%;margin: 15px auto;border:1px solid #A0A3A5;">
    <div class="bm_div2">
        <p style="text-align: center;font-size: 28px;font-weight: bold"><span>沈阳北软信息职业技术学院单独招生报名登记表</span></p>
        <form action="/edit" method="post">
            <table>
                <tr class="tr">
                    <td><span>姓名</span></td>
                    <td><span>${regist.name}</span></td>
                    <td><span>性别</span></td>
                    <c:if test="${regist.sex == 1}">
                    <td><span>男</span></td>
                    </c:if>
                    <c:if test="${regist.sex == 2}">
                        <td><span>女</span></td>
                    </c:if>
                    <td><span>政治面貌</span></td>

                    <c:if test="${regist.politicalOutlook == 1}">
                        <td><span>党员</span></td>
                    </c:if>
                    <c:if test="${regist.politicalOutlook == 2}">
                        <td><span>团员</span></td>
                    </c:if>
                    <c:if test="${regist.politicalOutlook == 3}">
                        <td><span>群众</span></td>
                    </c:if>

                </tr>
                <tr class="tr">
                    <td><span>毕业高中</span></td>
                    <td colspan="2"><input type="text" value="${regist.highSchool}" name="highSchool"></td>
                    <td><span>电子邮箱</span></td>
                    <td colspan="2"><input type="text" value="${regist.email}" name="email"></td>
                </tr>
                <tr class="tr">
                    <td><span>身份证号</span></td>
                    <td colspan="2"><span>${regist.identityNumber}</span></td>
                    <td><span>考生号</span></td>
                    <td colspan="2"><span>${regist.examineeNumber}</span></td>
                </tr>
                <tr class="tr">
                    <td><span>通知书邮寄地址</span></td>
                    <td colspan="5"><input type="text" value="${regist.address}" style="width: 80%;" name="address"></td>
                </tr>
                <tr class="tr">
                    <td rowspan="3" colspan="2"><span>联系电话</span></td>
                    <td><span>本人联系电话</span></td>
                    <td colspan="3"><input type="text" value="${regist.phone}" name="phone"></td>
                </tr>
                <tr class="tr">
                    <td><span>家长联系电话</span></td>
                    <td colspan="3"><input type="text" value="${regist.parentPhone}" name="parentPhone"></td>
                </tr>
                <tr class="tr">
                    <td><span>班主任联系电话</span></td>
                    <td colspan="3"><input type="text" value="${regist.headmasterPhone}" name="headmasterPhone"></td>
                </tr>
                <tr class="tr">
                    <td colspan="6" style="text-align: center"><span>报考专业</span></td>
                </tr>
                <tr class="tr">
                    <c:forEach var="item" items="${majorList}">
                    <td colspan="2"><span>${item.majorName}</span></td>
                    </c:forEach>
                </tr>
                <tr class="tr">
                    <td><span>考试科目</span></td>
                    <td colspan="5"><span>语文+数学+英语</span></td>
                </tr>
            </table>
            <button type="submit" class="btn btn-info" style="margin-top: 20px;">提交</button>
        </form>
    </div>
</div>

<!--底部-->
<%@ include file="/html/include/studentFooter.jsp" %>
