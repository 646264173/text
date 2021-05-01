<%--
  Created by IntelliJ IDEA.
  User: 64626
  Date: 2021/4/28
  Time: 上午 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--教师端导航--%>
<nav class="navbar navbar-default navbar-cls-top " role="navigation"
     style="margin-bottom: 0;padding: 10px 0 10px 17px;">
    <img src="images/logo-2.png" height="61" width="370"/>
    <div class="header-right">
        <a href="exit" style="color: white;display: flex;align-items: center"><span
                class="glyphicon glyphicon-off"></span><b>&nbsp;退出</b></a>
    </div>
</nav>
<!-- /. 左操作菜单 -->
<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <li>
                <a class="active-menu" href="index.jsp"><i class="fa fa-angellist"></i>首页</a>
            </li>

            <!--缴费-->
            <li>
                <a href="#"><i class="fa fa-cny "></i>缴费 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#"><i class="fa fa-eye"></i>缴费查看</a>
                    </li>
                </ul>
            </li>
            <!--新闻管理-->
            <li>
                <a href="#"><i class="fa fa-chain-broken"></i>新闻管理 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#"><i class="fa fa-certificate"></i>新闻管理</a>
                    </li>
                </ul>
            </li>
            <!--考生管理-->
            <li>
                <a href="#"><i class="fa fa-user"></i>考生管理 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#"><i class="fa fa-user"></i>考生信息管理</a>
                    </li>
                </ul>
            </li>
            <!--录取管理-->
            <li>
                <a href="#"><i class="	fa fa-graduation-cap"></i>录取管理 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#"><i class="fa fa-graduation-cap"></i>录取管理 </a>
                    </li>
                </ul>
            </li>
            <!--考场管理-->
            <li>
                <a href="#"><i class="fa fa-desktop "></i>考场管理 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">

                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>考场管理 </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-list-alt"></i>排考管理</a>
                    </li>
                </ul>
            </li>
            <!--统计管理-->
            <li>
                <a href="#"><i class="	fa fa-bar-chart-o"></i>统计管理 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>报考专业信息统计 </a>
                    </li>
                </ul>
            </li>
            <!--图表统计-->
            <li>
                <a href="#"><i class="	fa fa-area-chart"></i>图表汇总 <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#"><i class="fa fa-area-chart"></i>图表汇总 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>