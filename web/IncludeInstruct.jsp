<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/3/1
  Time: 00:36
  To change this template use File | Settings | File Templates.
--%>

<%--
        Include指令
            JSP可以通过include指令来包含其他文件。被包含的文件可以是JSP文件、HTML文件或文本文件。包含的文件
            就好像是该JSP文件的一部分，会被同时编译执行。

            Include指令的语法格式如下：
            < %@ include file="文件相对 url 地址" %>
            include 指令中的文件名实际上是一个相对的 URL 地址。
            如果您没有给文件关联一个路径，JSP编译器默认在当前路径下寻找。

            等价的XML语法：
            < jsp:directive.include file="文件相对 url 地址" />
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>include 指令</title>
    </head>
    <body>
        <h1>静态包含操作</h1>
            <%@ include file="included.html"%>
            <%@ include file="included.jsp"%>
            <%@ include file="included.inc"%>
    </body>
</html>
