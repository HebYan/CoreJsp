<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp三大指令</title>
</head>
<body>
    <p>
        JSP指令<br/>
        JSP指令用来设置与整个JSP页面相关的属性。
        <br/>
        JSP指令语法格式：<br/>
        < %@ directive attribute="value" %>
        <br/>
        这里有三种指令标签：<br/>
        指令                 	描述<br/>
        < %@ page ... %>	    定义页面的依赖属性，比如脚本语言、error页面、缓存需求等等<br/>
        < %@ include ... %>	    包含其他文件<br/>
        < %@ taglib ... %>	    引入标签库的定义，可以是自定义标签<br/>
    </p>
</body>
</html>
