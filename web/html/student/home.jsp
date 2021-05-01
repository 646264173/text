<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>

    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/home.css">
</head>
<style>
    .carousel-control.right {
        background-image: none;
    }

    .carousel-control.left {
        background-image: none;
    }

    .btn {
        border-radius: 0;
        padding: 3px 26px;
    }

    .box > div {
        height: 230px;
    }
</style>
<body>
<%@ include file="/html/include/studentHeader.jsp" %>

<input type="hidden" id="session" value="<%=session.getAttribute("sfzh")%>">

<!--轮播图-->
<div class="lb_background">
    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" data-ride="carousel">
            <div class="item active">
                <img class="lb-img" src="images/banner1.jpg" height="500" width="1280"/></div>
            <div class="item">
                <img class="lb-img" src="images/banner2.jpg" height="500" width="1280"/></div>
            <div class="item">
                <img class="lb-img" src="images/banner3.jpg" height="500" width="1280"/></div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!--学院简介-->
<div class="school_introduction">
    <!--标题-->
    <div class="school_bottom">
        <h4 class="title">
            学院简介
        </h4>
    </div>
    <!--学院简介，包含三个模块-->
    <div class="row box">
        <!--轮播-->
        <div class="col-sm-4">
            <div id="myCarousel2" class="carousel slide">
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner lu-2" data-ride="carousel">
                    <div class="item active">
                        <img class="lb-img" style="height: 230px" src="images/banner1.jpg" height="500"
                             width="1280"/></div>
                    <div class="item">
                        <img class="lb-img" style="height: 230px" src="images/banner2.jpg" height="500"
                             width="1280"/></div>
                    <div class="item">
                        <img class="lb-img " style="height: 230px" src="images/banner3.jpg" height="500"
                             width="1280"/></div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <h5 class="text-center font-weight-bold" style="font-weight: bold">沈阳北软信息职业技术学院</h5>
            <div class="" style="height:194px; overflow-y:scroll">
                <div style="border: 1px  #000000; width: 90%; margin: 0 auto;">
                    <span>
                      <c:forEach items="${newsList}" var="item">
                          <c:if test="${item.newsType == 1}">
                              ${item.content}
                          </c:if>

                      </c:forEach>

                    </span>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div style="border: 1px solid rgba(225, 225, 225, 1);">
                <!--登录方式-->
                <div class="row" style="width: 100%; margin: 0 auto;">
                    <button class="col-sm-6" style="text-align: center;background: white;padding: 10px 0" onclick="studentLogin()">
                        <img src="images/login_computer.png" style="height: 20px;width: 20px"/>
                        &nbsp;学生登录
                    </button>
                    <button class="col-sm-6" style="text-align: center;background: #6699FF;padding: 10px 0" onclick="teacherLogin()">
                        <img src="images/login_phone.png" style="height: 20px;width: 20px"/>
                        &nbsp;教师登录
                    </button>
                </div>
                <!--表单-->
                <form class="form-horizontal" role="form">
                    <input type="hidden" value="1" id="isUser">
                    <div class="form-group" style="padding-bottom: 17px;">
                        <label for="sfzh" class="col-sm-4 control-label">身份证号：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="sfzh"
                                   placeholder="请输入身份证号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-4 control-label">密码：</label>
                        <div class="col-sm-8">
                            <input style="margin-bottom: 10px" type="password" class="form-control" id="password"
                                   placeholder="请输入密码">
                            <a style="padding: 10px 0">找回密码</a>
                        </div>
                    </div>
                </form>
                <!--提示可以先隐藏掉,-->
                <div id="tips" style="text-align: center;padding-bottom: 10px;display: none">
                    <a style="text-align: center;color: red">提示：账号或密码不正确</a>
                </div>
                <!--登录注册-->
                <div style="display: flex;justify-content: space-between;width: 54%;margin: 0 auto;padding-bottom: 10px">
                    <button style="background: #6699FF" class="btn btn-info" onclick="login()">登录</button>
                    <a id="register" class="btn btn-info" href="register">注册</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--最新通知、专业介绍、单招新闻-->
<div class="school_introduction">
    <div class="row">
        <div class="col-sm-4">
            <div class="school_bottom">
                <h4 class="title">
                    <c:forEach items="$`{}">

                    </c:forEach>
                </h4>
            </div>
            <!--滚动条-->
            <div class="panel-body" style="height: 240px; overflow-y:scroll;border: 1px solid #c0c0c0">
                <div style="border: 1px  #000000; width: 90%; margin: 0 auto;">
                <span style="color: red;font-weight: bold;line-height: 20px">
                     <c:forEach items="${newsList}" var="item">
                         <c:if test="${item.newsType == 2}">
                             ${item.content}
                         </c:if>

                     </c:forEach>
                </span>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="school_bottom">
                <h4 class="title">
                    专业简介
                </h4>
            </div>
            <ul class="xw list-unstyled" style="height: 240px;padding: 20px 0;overflow-y:scroll">
                <c:forEach items="${newsList}" var="item">

                    <c:if test="${item.newsType == 3}">
                <li>
                    <div style="display:flex;justify-content: space-between;padding:5px 0">
                        <a href="news?newsId=${item.newsId}">${item.title}</a>
                        <div class="list-time">${item.publishDate}</div>
                    </div>
                </li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
        <div class="col-sm-4">
            <div class="school_bottom">

                <h4 class="title">
                    单招新闻
                </h4>
            </div>
            <ul class="xw list-unstyled" style="height: 240px;padding: 20px 0;overflow-y:scroll">
<c:forEach items="${newsList}" var="item">

    <c:if test="${item.newsType == 4}">
                <li>
                    <div style="display:flex;justify-content: space-between;padding:5px 0">

                        <a href="news?newsId=${item.newsId}">${item.title}</a>
                        <div class="list-time">${item.publishDate}</div>
                    </div>
                </li>

    </c:if>
</c:forEach>
            </ul>
        </div>
    </div>
</div>

<script>
    var session = $("#session").val();
    if(session == "null"){
        alert("登陆查看更多内容");
    }

    function  teacherLogin() {
        $("label[for='sfzh']").text("教工号：");
        $("#register").hide();
        $("#isUser").val(2);
          
    }
    function stacherLogin() {
        $("label[sfzh]").text("身份证号：")
        $("#register").show();
        $("#isUser").val(1);
    }
    function login() {
        var sfzh =$("#sfzh").val();
        var password =$("#password").val();
        var isUser =$("#isUser").val();
        var localHref;
        if (isUser == 1){
            localHref = "application";

        }
        if (isUser ==2){
            localHref ="teacherIndex";
        }
        if (sfzh ==''|| password ==''){
            alert("请输入账号或密码");

        } else {
            $.ajax({
                url:'loginUser',
                type:'post',
                data:{sfzh:sfzh,password:password,isUser:isUser},
                dataType:'json',
                success:function (data) {
                    if (data){
                        $("#tips").hide();
                        location.href =localHref;

                    } else {
                        $("#tips").show();

                    }

                }
            });
        }


    }

    </script>
<%@ include file="/html/include/studentFooter.jsp" %>

