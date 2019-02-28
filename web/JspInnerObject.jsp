<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp隐含对象</title>
</head>
<body>
        <p>
            JSP隐含对象
            JSP支持九个自动定义的变量，江湖人称隐含对象。这九个隐含对象的简介见下表：

            对象	              描述
            request	          HttpServletRequest类的实例
            response	      HttpServletResponse类的实例
            out	              PrintWriter类的实例，用于把结果输出至网页上
            session	          HttpSession类的实例
            application	      ServletContext类的实例，与应用上下文有关
            config	          ServletConfig类的实例
            pageContext	      PageContext类的实例，提供对JSP页面所有对象以及命名空间的访问
            page	          类似于Java类中的this关键字
            Exception	      Exception类的对象，代表发生错误的JSP页面中对应的异常对象
        </p>
</body>
</html>
