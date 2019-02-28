<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/3/1
  Time: 01:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>include 动作实例</title>
</head>
<body>
 <jsp:include page="date.jsp" flush="true" />
</body>
<script language="JavaScript">
    function myrefresh()
    {
        window.location.reload();
    }
    setTimeout('myrefresh()',500); //指定1秒刷新一次
</script>
</html>