<%@ page import="org.global.conan.Members" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Members mem = new Members();
        mem.setUserId("conan");
        mem.setName("코난");
    %>
    이름 : <%=mem.getName()%>
    아이디 : <%=mem.getUserId()%>
</body>
</html>
