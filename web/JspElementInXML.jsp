<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%--    <jsp:scriptlet>是jsp的xml语法形式，它与<% %>是等效的。只是要求xml语法的文档中只能使用前者.    --%>
<%--    其他的jsp标签也都有对应的xml语法形式   --%>
    <html>
        <head> <title>jsp:scriptlet</title> </head>
        <body>
            <jsp:scriptlet>
              String str = "hello" ;
              out.println(str) ;
              out.println(str2);
            </jsp:scriptlet>
            <%
               String str1 = "world";
               out.println(str1);
            %>
            <%--Jsp声明转译阶段会成为Jsp对应的Servlet的成员属性和方法--%>
            <jsp:declaration>
                String str2 = "jsp声明的XML写法"
                private void doSomeThing() {
                    System.out.println("do something.");
                }
            </jsp:declaration>
            <%!
                private int a = 100;
                private int getA() {
                    return this.a;
                }
            %>
            <jsp:expression>
                今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
            </jsp:expression>
            <%= this.getA()%>
        </body>
    </html>

