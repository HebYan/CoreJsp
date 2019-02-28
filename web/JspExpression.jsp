<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>

<!-- Jsp表达式也会在转译阶段写入到对应Servlet的Sevice()方法中 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>JspExpression</title>
</head>
<body>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>
</body>
<script language="JavaScript">
    function myrefresh()
    {
        window.location.reload();
    }
    setTimeout('myrefresh()',1000); //指定1秒刷新一次 
</script>
</html> 
