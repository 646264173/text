<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>新闻管理</title>
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
    <link rel="stylesheet" href="css/sweetalert.css">
</head>
<body>
<div id="wrapper">
    <%@ include file="/html/include/teacherHeader.jsp" %>
    <!-- /. 左操作菜单 -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="page-head-line">新闻管理</div>
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
                        <div class="form-group">
                            <label class="control-label">标题:</label>
                            <input type="text" class="form-control" placeholder="请输入标题">
                        </div>
                        <div class="form-group">
                            <label class="control-label">新闻类型:</label>
                            <select class="form-control">
                                <option value="">请选择新闻类型</option>
                                <option value="1">学院简介</option>
                                <option value="2">最新通知</option>
                                <option value="3">专业简介</option>
                                <option value="4">单招新闻</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">新闻状态:</label>
                            <select class="form-control">
                                <option value="">请选择新闻状态</option>
                                <option value="1">未发布</option>
                                <option value="2">已发布</option>
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
                    <button class="btn btn-default grey_button"><i class="fa fa-plus">&nbsp;</i>&nbsp;&nbsp;新增
                    </button>
                    <button class="btn btn-default grey_button"><i class="fa fa-refresh">&nbsp;</i>&nbsp;&nbsp;刷新
                    </button>
                </div>
            </div>
            <%--表格--%>
            <table class="table table-bordered">
                <thead>
                <tr style="background: #F5F5F5">
                    <th>序号</th>
                    <th>新闻标题</th>
                    <th>新闻类型</th>
                    <th>创建人</th>
                    <th>创建时间</th>
                    <th>状态</th>
                    <th>发布时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>这是标题</td>
                    <td>学院简介</td>
                    <td>张三</td>
                    <td>这是时间</td>
                    <td>未发布</td>
                    <td>发布时间</td>
                    <td>
                        <button class="btn btn-default grey_button"><i
                                class="fa fa-edit">&nbsp;</i>&nbsp;编辑
                        </button>
                        <button class="btn btn-default grey_button"><i
                                class="fa fa-trash-o">&nbsp;</i>&nbsp;删除
                        </button>
                    </td>
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
            <%--模态框--%>
            <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" style="width: 600px; margin: 140px auto;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">新增</h4>
                        </div>
                        <div class="modal-body">
                            <form role="form" style=" width: 88%;margin: 0 auto;">
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">新闻标题:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">新闻类型:</label>
                                    <div class="col-sm-9">
                                        <select class="form-control">
                                            <option value="1">学院简介</option>
                                            <option value="2">最新通知</option>
                                            <option value="3">专业简介</option>
                                            <option value="4">单招新闻</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">新闻内容:</label>
                                    <div class="col-sm-9">
                                        <textarea rows="5" class="form-control"
                                                  style="resize: none;" required></textarea>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">新闻发布:</label>
                                    <div class="col-sm-9">
                                        <select class="form-control">
                                            <option value="1">未发布</option>
                                            <option value="2">已发布</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                    <button type="button" class="btn btn-primary">提交</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<%@ include file="/html/include/teacherFooter.jsp" %>