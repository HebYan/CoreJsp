<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>第一个jsp程序</title>
  </head>
  <body>
  <!--
  JSP全称Java Server Pages，是一种动态网页开发技术。它使用JSP标签在HTML网页中插入Java代码。标签通常以< %开头以 %> 结束。
  JSP是一种Java servlet，主要用于实现Java web应用程序的用户界面部分。网页开发者们通过结合HTML代码、XHTML代码、XML元素以
  及嵌入JSP操作和命令来编写JSP。JSP通过网页表单获取用户输入数据、访问数据库及其他数据源，然后动态地创建网页。JSP标签有多种
  功能，比如访问数据库、记录用户选择信息、访问JavaBeans组件等，还可以在不同的网页中传递控制信息和共享信息。
  以下步骤表明了 Web 服务器是如何使用JSP来创建网页的：
        就像其他普通的网页一样，您的浏览器发送一个 HTTP 请求给服务器。
        Web 服务器识别出这是一个对 JSP 网页的请求，并且将该请求传递给 JSP 引擎。通过使用 URL或者 .jsp 文件来完成。
        JSP 引擎从磁盘中载入 JSP 文件，然后将它们转化为 Servlet。这种转化只是简单地将所有模板文本改用 println()
  语句，并且将所有的 JSP 元素转化成 Java 代码。
        JSP 引擎将 Servlet 编译成可执行类，并且将原始请求传递给 Servlet 引擎。
        Web 服务器的某组件将会调用 Servlet 引擎，然后载入并执行 Servlet 类。在执行过程中，Servlet 产生 HTML
  格式的输出并将其内嵌于 HTTP response 中上交给 Web 服务器。
        Web 服务器以静态 HTML 网页的形式将 HTTP response 返回到您的浏览器中。
        最终，Web 浏览器处理 HTTP response 中动态产生的HTML网页，就好像在处理静态网页一样。
   -->
     <%
        System.out.print("hello wolrd");
        response.sendRedirect("/testServlet");
     %>
  </body>
</html>
