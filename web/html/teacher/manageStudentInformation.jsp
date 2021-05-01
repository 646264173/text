<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>考生信息管理</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!-- PAGE LEVEL STYLES -->
    <link href="css/bootstrap-fileupload.min.css" rel="stylesheet"/>
    <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet"/>
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/sweetalert.css">
</head>
<body>
<div id="wrapper">
    <%--导航--%>
        <%@ include file="/html/include/teacherHeader.jsp" %>
    <!-- /. 左操作菜单 -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="page-head-line">考生信息管理</div>
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
                            <label class="control-label">学生身份证号:</label>
                            <input type="text" class="form-control"
                                   placeholder="请输入学生身份证号">
                        </div>
                        <div class="form-group">
                            <label class="control-label">考生号:</label>
                            <input type="text" class="form-control"
                                   placeholder="请输入考生号">
                        </div>
                        <button type="button" class="btn btn-primary" style="float: right;"><span
                                class="	glyphicon glyphicon-search"></span>查询
                        </button>
                    </form>
                </div>
            </div>
            <div class="flex_title">
                <div class="page_title">数据列表</div>
                <div style="display: flex;justify-content:flex-start">
                    <a href="#" class="btn btn-default grey_button"><i class="fa fa-download">&nbsp;</i>&nbsp;&nbsp;考生信息导出
                    </a>
                    <button class="btn btn-default grey_button"><i class="fa fa-refresh">&nbsp;</i>&nbsp;&nbsp;刷新
                    </button>
                </div>
            </div>
            <%--表格--%>
            <table class="table table-bordered">
                <thead>
                <tr style="background: #F5F5F5">
                    <th>序号</th>
                    <th>学生身份证</th>
                    <th>考生号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>毕业高中</th>
                    <th>报考专业</th>
                    <th>联系电话</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>2111111111111111</td>
                    <td>2111111111111111</td>
                    <td>张三</td>
                    <td>男</td>
                    <td>沈阳市第一幼儿园</td>
                    <td>软件技术</td>
                    <td>138888888888</td>
                    <td>
                        <button class="btn btn-default grey_button"><i
                                class="fa fa-edit">&nbsp;</i>&nbsp;编辑
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
                                    <label class="col-sm-3 control-label">学生身份证:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">考生号:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">姓名:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">性别:</label>
                                    <div class="col-sm-9">
                                        <select class="form-control">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">政治面貌:</label>
                                    <div class="col-sm-9">
                                        <select class="form-control">
                                            <option value="群众">群众</option>
                                            <option value="共青团员">共青团员</option>
                                            <option value="预备党员">预备党员</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">毕业高中:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">通知书邮寄地:</label>
                                    <div class="col-sm-9">
                                        <textarea rows="5" class="form-control"
                                                  style="resize: none;"></textarea>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">报考专业:</label>
                                    <div class="col-sm-9">
                                        <select class="form-control">
                                            <option value="1">软件技术</option>
                                            <option value="1">软件技术</option>
                                            <option value="1">软件技术</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">联系电话:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control">
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
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<%--页脚--%>
<%@ include file="/html/include/teacherFooter.jsp" %>