<%--
  Created by IntelliJ IDEA.
  User: herbertyang
  Date: 19/2/28
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>

<%-- < %@ page ... %>定义页面的依赖属性，比如脚本语言、error页面、缓存需求等等 --%>
<!--
  errorPage 中的 extends
  作用：改变当前jsp继承类，默认继承org.apache.jasper.runtime.HttpJspBase，可定义新类继承该类，重写_jspService
  方法，然后设定extends=”新类全限定名称”，一般不建议这样做，可能会改变JSP解析执行性能或者引起服务器崩溃。
-->
<!--
属性
下表列出与Page指令相关的属性：
属性	             描述
buffer	             指定out对象使用缓冲区的大小
autoFlush	         控制out对象的 缓存区
contentType	         指定当前JSP页面的MIME类型和字符编码
errorPage	         指定当JSP页面发生异常时需要转向的错误处理页面
isErrorPage	         指定当前页面是否可以作为另一个JSP页面的错误处理页面
extends	             指定servlet从哪一个类继承
import	             导入要使用的Java类
info	             定义JSP页面的描述信息
isThreadSafe	     指定对JSP页面的访问是否为线程安全
language	         定义JSP页面所用的脚本语言，默认是Java
session	             指定JSP页面是否使用session
isELIgnored	         指定是否执行EL表达式
isScriptingEnabled	 确定JSP脚本能否被使用
-->
<%@ page errorPage="/error.jsp" extends="org.apache.jasper.runtime.HttpJspBase" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ page autoFlush="true" buffer="8kb" deferredSyntaxAllowedAsLiteral="false"%>
<%@ page isErrorPage="false" isThreadSafe="true" isELIgnored="false" session="true" %>
<%@ page import="java.util.*" trimDirectiveWhitespaces="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Jsp 页面指令实现异常跳转</title>
</head>
<body>
<%=1/0 %>
</body>
</html>

