<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>

<!-- Jsp脚本在转译阶段会被复制到Jsp对应的Sevice()方法中 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>JspScript</title>
</head>
<body>
Hello World!<br/>
<%
    out.println("你的 IP 地址 " + request.getRemoteAddr());
%>
</body>
</html>