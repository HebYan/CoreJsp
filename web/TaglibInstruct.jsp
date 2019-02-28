<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/3/1
  Time: 00:45
  To change this template use File | Settings | File Templates.
--%>

<%--
Taglib指令
JSP API允许用户自定义标签，一个自定义标签库就是自定义标签的集合。
Taglib指令引入一个自定义标签集合的定义，包括库路径、自定义标签。

Taglib指令的语法：
<%@ taglib uri="uri" prefix="prefixOfTag" %>
uri属性确定标签库的位置，prefix属性指定标签库的前缀。

等价的XML语法：
<jsp:directive.taglib uri="uri" prefix="prefixOfTag" />

标签库引入jsp文件时uri有两种写法。
1、自定义。
    你可以自己起个有个性的名字，但这样做的后果就是，编译器会找不到用的标签的tld文件，从而找不到这个标签的
功能支持类，导致标签无法正常工作(需要在web.xml中声明)。
    如果你使用了自定义uri的话，你还需要在该工程的web.xml下加入如下信息：
web.xml
<web-app id="WebApp_ID" version="2.4" xmlns="http://java.sun.com/xml/ns/j2ee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd">
                ...
    <jsp-config>
       <taglib>
           <taglib-uri>myjstl</taglib-uri>
           <taglib-location>/WEB-INF/tld/c.tld</taglib-location>
       </taglib>
    </jsp-config>
                ...
</web-app>

2、标准定义
    当你打开一个tld文件时，在文件的头部会有一个uri节点，里面的内容即为uri的标准定义。使用标准定义的优点
在于，不用在web.xml下加上上面的代码。
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>collection</title>
</head>
<body>

<form action="" method="post">
    <p><input name="name" size="20" value=""></p>
    <p><input name="url" size="50" value=""></p>
    <p><input name="" type="submit" value="save"></p>
</form>
<hr>
${q }
<c:forEach var="l" items="${list}">
    <table>
        <th>
        <td>编号</td>
        <td>名称</td>
        <td>URL</td>
        <td>时间</td>
        </th>
        <tr>
            <td>${l.id}</td>
            <td><a href="${l.url}">${l.name}</a></td>
            <td>${l.createTime}</td>
            <td><a href="${l.url}">编辑</a><a href="${l.url}">删除</a></td>
        </tr>
    </table>

    <p>${l.url }</p>
</c:forEach>
</body>
</html>