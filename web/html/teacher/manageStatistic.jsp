﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>统计管理</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!--PAGE LEVELC STYLES-->
    <link href="css/invoice.css" rel="stylesheet"/>
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
        <div id="page-inner">
            <div class="page-head-line">统计管理</div>
        </div>
        <%--表单--%>
        <div id="page-inner2">
            <div class="row" style="border-bottom: 1px dashed #d4dcd9;">
                <div class="col-md-12">
                    <div class="page-subhead-line">数据筛选</div>
                </div>
            </div>
            <%--表单--%>
            <div class="row" style="border-bottom: 1px dashed #d4dcd9;padding: 13px 0;">
                <div class="col-md-12">
                    <form role="form" class="form-inline">
                        <div class="form-group ">
                            <label class=" control-label">专业名称:</label>
                            <select class="form-control">
                                <option value="">请选择专业名称</option>
                                <option value="1">软件技术</option>
                                <option value="1">软件技术</option>
                                <option value="1">软件技术</option>
                            </select>
                        </div>
                        <button type="button" class="btn btn-primary" style="float: right;"><span
                                class="glyphicon glyphicon-search"></span>&nbsp;查询
                        </button>
                    </form>
                </div>
            </div>
            <div class="flex_title">
                <div class="page_title">数据列表</div>
                <div style="display: flex;justify-content:flex-start">
                    <button class="btn btn-default grey_button"><i class="fa fa-refresh">&nbsp;</i>&nbsp;&nbsp;刷新
                    </button>
                </div>
            </div>
            <%--表格--%>
            <table class="table table-bordered bm_number" style="width: 15%;">
                <tr>
                    <td>报名总人数</td>
                    <td style="color: #00ADFF">11人</td>
                </tr>
                <tr>
                    <td>缴费人数</td>
                    <td style="color: #ff8913">11人</td>
                </tr>
                <tr>
                    <td>报名未缴费人数</td>
                    <td style="color:red">11人</td>
                </tr>
            </table>
            <table class="table table-bordered">
                <thead>
                <tr style="background: #F5F5F5">
                    <th>序号</th>
                    <th>专业编号</th>
                    <th>专业名称</th>
                    <th>报名人数</th>
                    <th>缴费人数</th>
                    <th>报名但未缴费人数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>软件技术</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                </tbody>
            </table>
            <%--分页--%>
            <div class="paging">
                <div class="record">总共1条记录</div>
                <ul class="pagination">
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                </ul>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<%--页脚--%>
<%@ include file="/html/include/teacherFooter.jsp" %>