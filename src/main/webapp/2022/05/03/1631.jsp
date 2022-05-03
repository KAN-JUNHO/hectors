<%@ page import="org.global.conan.HelloBean" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        HelloBean hello = (HelloBean) request.getParameter("hello");
        if (hello==null){
            hello = new HelloBean();
            request.setAttribute("hello",hello);
            out.println(hello.getName());
            hello.setName("org/global/conan");
            out.println(hello.getName())
        }
    %>
</body>
</html>
