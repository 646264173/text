<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>打印准考证</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<style>
    .div {
        width: 650px;
        text-align: center;
        font-size: 12px;
        font-weight: bold;
    }

    .div2 > p {
        color: blue;
    }

    .div2 > p > span {
        color: red;
    }

    .div3_2 {
        width: 98%;
        margin: 0px auto;
        border-bottom: 1px solid #d1d1d1;
        border-top: 1px solid #d1d1d1;
        padding: 10px 15px;
        text-align: left;
    }

    .div3_2 tr {
        height: 28px;
    }
</style>
<body>
<div class="div">
    <div class="div1" style="margin-bottom: 30px;">
        <p>您的报考数据正在进行资格审查并编排考场,如已缴纳报名费不能打印请联系024-88928718,88928719,88928720,</br>
            如尚未交费有疑问请联系我校招生办。</p>
        <p>如打印不方便的同学可以凭身份证，考试前到我校招生办免费打印。也可以凭通知短信、微信准考证和身份证进入考场。</p>
    </div>
    <div class="div2">
        <p>
            <button class="btn btn-success">打印</button>
            在浏览器打印功能设置:去除<span>页眉,页脚</span>以及把<span>背景图形</span>(或<span>背景颜色和图片</span>)选项<span>选中</span></p>
    </div>
    <div class="div3" style="border: 2px solid #000000">
        <div class="div3_1" style="text-align: center">
            <h4>沈阳北软信息职业技术学院招生统一考试</h4>
            <h3 style="letter-spacing: 23px">准考证</h3>
        </div>
        <div class="div3_2">
            <table>
                <tr>
                    <td style="width: 100px;">考生姓名：</td>
                    <td>张三</td>
                </tr>
                <tr>
                    <td style="width: 100px;">准考证号：</td>
                    <td>211111111111111111</td>
                </tr>
                <tr>
                    <td style="width: 100px;">身份证号：</td>
                    <td>211111111111111111</td>
                </tr>
                <tr>
                    <td style="width: 100px;">考生学校：</td>
                    <td>沈阳市第一幼儿园</td>
                </tr>
                <tr>
                    <td style="width: 100px;">考试地点：</td>
                    <td>沈阳北软信息职业技术学院</td>
                </tr>
                <tr>
                    <td style="width: 100px;">报考专业：</td>
                    <td>软件技术</td>
                </tr>
            </table>
        </div>
        <div class="div3_3" style="margin-top: 10px">
            <p><strong>考试科目及时间</strong></p>
            <table class="table table-bordered">
                <tr>
                    <td>考试科目</td>
                    <td>考试日期</td>
                    <td>考试时间</td>
                    <td>考场号</td>
                    <td>座位号</td>
                    <td>教室号</td>
                </tr>
                <tr>
                    <td>语文</td>
                    <td>2019年3月12日</td>
                    <td>8:30-10:00</td>
                    <td>1212121212</td>
                    <td>11</td>
                    <td>教学楼1101</td>
                </tr>
                <tr>
                    <td>数学</td>
                    <td>2019年3月12日</td>
                    <td>10:20-11:50</td>
                    <td>1212121212</td>
                    <td>11</td>
                    <td>教学楼1101</td>
                </tr>
                <tr>
                    <td>英语</td>
                    <td>2019年3月12日</td>
                    <td>13:30-15:30</td>
                    <td>1212121212</td>
                    <td>11</td>
                    <td>教学楼1101</td>
                </tr>
            </table>
        </div>
        <div class="div3_4">
            <p><strong>考生须知</strong></p>
            <ol style="text-align: left;">
                <li>考生应考时，应携带蓝黑色或黑色墨水笔。严禁将书籍、笔记、电子记事本等电子设备带至考场，一经发现，按违纪处理</li>
                <li>
                    考试前30分钟进入考场，监考人员核对准考证（包括电子准考证）、身份证后，学生对号入座将身份证放在桌面上角备查（不携带身份证不允许参加考试），
                    将手机放到指定的信封中，注意：信封不能涂抹，无需写名。
                </li>
                <li>考试开始15分钟后，迟到考生不得进入考场参加考试。考生不得提前交卷。</li>
                <li>严禁将试卷、答题卡（纸）带出考场。</li>
            </ol>
            <p style="text-align: left;margin: 30px 15px 50px 15px">提示：请考生在考试前一天熟悉考点地址和交通路线。</p>
        </div>
        <div class="div3_5" style="text-align: left;margin: 10px 15px">
            <span><strong>地址：</strong>沈阳市沈北新区沈北路53号 &nbsp;&nbsp; <strong>咨询电话：</strong>（024）88927818/19/20</span>
        </div>
    </div>
</div>
</body>
</html>
