<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<!--
一 JSP编译
当浏览器请求JSP页面时，JSP引擎会首先去检查是否需要编译这个文件。如果这个文件没有被编译过，或者在上次编译后被更改过，
则编译这个JSP文件。
编译的过程包括三个步骤：
解析JSP文件。
将JSP文件转为servlet。
编译servlet。

二 JSP初始化
容器载入JSP文件后(事实上,是JSP转译之后的servlet)，它会在为请求提供任何服务前调用jspInit()方法。如果您需要执行自定义
的JSP初始化任务，复写jspInit()方法就行了，就像下面这样：
public void jspInit(){
// 初始化代码
}
一般来讲程序只初始化一次，servlet也是如此。通常情况下您可以在jspInit()方法中初始化数据库连接、打开文件和创建查询表。

三 JSP执行
这一阶段描述了JSP生命周期中一切与请求相关的交互行为，直到被销毁。
当JSP网页完成初始化后，JSP引擎将会调用_jspService()方法。
_jspService()方法需要一个HttpServletRequest对象和一个HttpServletResponse对象作为它的参数，就像下面这样：

void _jspService(HttpServletRequest request,
HttpServletResponse response)
{
// 服务端处理代码
}
_jspService()方法在每个request中被调用一次并且负责产生与之相对应的response，并且它还负责产生所有7个HTTP方法的回
应，比如GET、POST、DELETE等等。

四 JSP清理
JSP生命周期的销毁阶段描述了当一个JSP网页从容器中被移除时所发生的一切。
jspDestroy()方法在JSP中等价于servlet中的销毁方法。当您需要执行任何清理工作时复写jspDestroy()方法，比如释放数据库
连接或者关闭文件夹等等。
jspDestroy()方法的格式如下：

public void jspDestroy()
{
// 清理代码
}
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>life.jsp</title>
</head>
<body>

<%!
    private int initVar=0;
    private int serviceVar=0;
    private int destroyVar=0;
%>

<%!
    public void jspInit(){
        initVar++;
        System.out.println("jspInit(): JSP被初始化了"+initVar+"次");
    }
    public void jspDestroy(){
        destroyVar++;
        System.out.println("jspDestroy(): JSP被销毁了"+destroyVar+"次");
    }
%>

<%
    serviceVar++;
    System.out.println("_jspService(): JSP共响应了"+serviceVar+"次请求");

    String content1="初始化次数 : "+initVar;
    String content2="响应客户请求次数 : "+serviceVar;
    String content3="销毁次数 : "+destroyVar;
%>
<h1>菜鸟教程 JSP 测试实例</h1>
<p><%=content1 %></p>
<p><%=content2 %></p>
<p><%=content3 %></p>
<%--JSP表达式和JSP脚本都会被写入到service方法中,而JSP声明作为Servlet的成员方法和属性--%>

</body>
</html>