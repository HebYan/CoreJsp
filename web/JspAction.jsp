<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp动作元素</title>
</head>
<body>
      <p>
          JSP动作
          JSP动作标签使用XML语法结构来控制servlet引擎。它能够动态插入一个文件，重用JavaBean组件，引导用户去另一个页面，
          为Java插件产生相关的HTML等等。

          行为标签只有一种语法格式，它严格遵守XML标准：
          < jsp:action_name attribute="value" />
          动作标签基本上是一些预先就定义好的函数，下表罗列出了一些可用的JSP行为标签：：

          语法	描述
          jsp:include	用于在当前页面中包含静态或动态资源
          jsp:useBean	寻找和初始化一个JavaBean组件
          jsp:setProperty	设置 JavaBean组件的值
          jsp:getProperty	将 JavaBean组件的值插入到 output中
          jsp:forward	从一个JSP文件向另一个文件传递一个包含用户请求的request对象
          jsp:plugin	用于在生成的HTML页面中包含Applet和JavaBean对象
          jsp:element	动态创建一个XML元素
          jsp:attribute	定义动态创建的XML元素的属性
          jsp:body	定义动态创建的XML元素的主体
          jsp:text	用于封装模板数据
      </p>
</body>
</html>
