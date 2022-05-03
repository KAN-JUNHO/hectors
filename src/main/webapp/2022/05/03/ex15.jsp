<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean class="org.global.conan.HelloBean" id="hello"/>
    <jsp:setProperty name="hello" property="name" param="name"/>
    <jsp:setProperty name="hello" property="number" param="number"/>
    <p>입려ㄱ하신 정보</p>
    <jsp:getProperty name="hello" property="*"/>
    <jsp:getProperty name="hello" property="number"/>
</body>
</html>
