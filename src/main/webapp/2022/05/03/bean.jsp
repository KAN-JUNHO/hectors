<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean class="org.global.conan.HelloBean" id ="hello" scope="page">
    <jsp:getProperty property="name" name="hello"/><br/>
    <jsp:getProperty property="number" name="hello"/><br/>
    <hr>
    <jsp:setProperty property="*" name="hello"/>
    <jsp:getProperty property="name" name="hello"/><br/>
    <jsp:getProperty property="number" name="hello"/><br/>
</jsp:useBean>
</body>
</html>
