<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="member" scope="request" class="org.global.conan.Members"/>
    <jsp:setProperty name="member" property="userId" value="conan"/>
    <jsp:setProperty name="member" property="name" value="코난"/>
    <jsp:forward page="useObject.jsp"/>
</body>
</html>
