<%@ page import="javafx.scene.shape.Circle" %><%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>

<%-- Jsp声明转译阶段会成为Jsp对应的Servlet的成员属性和方法 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JspDeclaration</title>
</head>
<body>
    <%! int i = 1; %>
    <%! int b, c; %>
    <%! Circle a = new Circle(2.0); %>
    <%
        System.out.println(i + b + c);
        System.out.println(a.toString());
    %>
</body>
</html>
