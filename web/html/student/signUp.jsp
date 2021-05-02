<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>报名登记表</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<style>
    .tr {
        border-bottom: 1px solid #A0A3A5;
        height: 50px
    }

    .td1 {
        width: 15%;
        border-right: 1px solid #A0A3A5;
        padding: 0px 15px;
        background-color: rgba(228, 243, 253, 0.42);
        font-weight: bold;
    }

    .td2 {
        padding: 0px 10px
    }

    .td2 > input, .td2 > select {
        padding-left: 5px;
        margin-right: 5px;
        border: 1px solid #A0A3A5;
        width: 20%;
        height: 80%;
        background-color: rgba(228, 243, 253, 0.42)
    }

    .fuhao {
        color: red;
    }
</style>
<body>
<%@ include file="/html/include/studentHeader.jsp" %>

<!-- 报名登记表内容 -->
<div style="width:98.5%;margin: 15px auto;border:1px solid #A0A3A5;">
    <div style="width:100%;background-color: #ffffff;">
        <form action="register" method="post">
            <table style="width:100%">
                <tr class="tr">
                    <td class="td1"><span>身份证号</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="text" placeholder="请输入身份证号" name="identityNumber"><span>最后一位X需为大写</span></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>密码</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="password" placeholder="请输入密码" name="password"></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>确认密码</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="password" placeholder="请输入确认密码" name="password2"></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>姓名</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="text" placeholder="请输入姓名" name="name"></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>性别</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2">
                        <select name="sex">
                            <option value="1">男</option>
                            <option value="2">女</option>
                        </select>
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>政治面貌</span></td>
                    <td class="td2">
                        <select name="zzmm">
                            <option value="1">预备党员</option>
                            <option value="2">共青团员</option>
                            <option value="3">群众</option>
                        </select>
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>毕业学校</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2">
                        <input type="text" placeholder="请输入毕业学校地址" name="highSchool">
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>电子邮箱地址</span></td>
                    <td class="td2"><input type="text" placeholder="请输入邮箱地址" name="email"></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>录取通知书邮寄地址</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="text" placeholder="请输入录取通知书邮寄地址" name="address"></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>联系电话-本人</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2">
                        <input type="text" placeholder="请输入您的直接联系方式" name="phone"><span>如：15041991111</span>
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>家长联系方式</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="text" placeholder="请输入家长电话" name="parentPhone"><span>如：15041991111</span>
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>班主任联系方式</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2"><input type="text" placeholder="请输入班主任电话"  name="headmasterPhone"><span>如：15041991111</span></td>
                </tr>
                <tr class="tr">
                    <td class="td1" colspan="2" style="text-align: center"><span>考生志愿</span></td>
                </tr>
                <tr class="tr">
                    <td class="td1"><span>报考专业</span><span class="fuhao">&nbsp;*</span></td>
                    <td class="td2">
                        <select name="firstChoice">
                            <c:forEach items="${majorList}" var="item">
                                <option value="${item.majorId}">${item.majorName}</option>
                            </c:forEach>
                        </select>
                        <select name="secondChoice">
                            <c:forEach items="${majorList}" var="item">
                                <option value="${item.majorId}">${item.majorName}</option>
                            </c:forEach>
                        </select>
                        <select name="thirdChoice">
                            <c:forEach items="${majorList}" var="item">
                                <option value="${item.majorId}">${item.majorName}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="tr">
                    <td class="td1" colspan="2" style="text-align: center">
                        <button type="reset" class="btn btn-info">重置</button>
                        <button type="button" class="btn btn-info" onclick="doSubmit()" >提交</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script>
    function  doSubmit() {
        var identityNumber = $("input[name ='identityNumber']").val();
        var identityNumberReg = new RegExp("[1-9]\\d{5}[1-9]\\d{3}((0[1-9])|(1[0-2]))(0[1-9]|([1|2][0-9])|3[0-1])((\\d{4})|//d{3}X)$");
        if (!identityNumberReg.test(identityNumber)) {
            alert("请输入正确身份证号");
            return false;

        }
        // if (password == "" ){
        //     alert("密码不能为空");
        //     return false;
        // }
        // if (password != password2){
        //     alert("两处密码不一致");
        //     return false;
        //
        // }

        var phone = $("input[name='phone']").val();
        var parentPhone = $("input[name='parentPhone']").val();
        var headmasterPhone = $("input[name='headmasterPhone']").val();
        var phoneReg =new RegExp("^[1-9]\\d{10}$");
        if (!phoneReg.test(phone)){
            alert("请输入正确联系方式！");
            return false;

        }
        if (!phoneReg.test(parentPhone)){
            alert("请输入正确家长联系方式！");
            return false;
        }
        if (!phoneReg.test(headmasterPhone)){
            alert("请输入正确班主任联系方式！");
            return false;
        }

        var name = $("input[name='name']").val();
        if (name == ""){
            alert("姓名不可为空");
            return false;
        }
        var highSchool = $("input[name='highSchool']").val();
        if (highSchool ==""){
            alert("毕业高中不能为空！");
            return false;
        }
        // var address = $(input[name='address']).val();
        // if (address == ""){
        //     alert("邮寄地址不能为空");
        //     return false;
        //
        // }


        $("form[action='register']").submit();

    }

    </script>
<%@ include file="/html/include/studentFooter.jsp" %>
