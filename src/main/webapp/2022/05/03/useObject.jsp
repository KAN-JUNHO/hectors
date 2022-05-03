<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <jsp:useBean id="member" scope="application" class="org.global.conan.Members"/>
<jsp:getProperty name="member" property="name"/>
(<jsp:getProperty name="member" property="userId"/>)님 안녕
</body>
</html>
