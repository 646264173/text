<%--
  Created by IntelliJ IDEA.
  User: 64626
  Date: 2021/4/26
  Time: 下午 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <% response.setStatus(301); response.setHeader( "Location", "index" ); response.setHeader( "Connection", "close" ); %>
  </body>
</html>
