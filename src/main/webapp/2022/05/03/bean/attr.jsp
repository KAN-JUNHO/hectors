<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        session.setAttribute("userId","rose");
        session.setAttribute("userPwd","1234");
        out.println(session.getAttribute("userId"));
        out.println(session.getAttribute("userPwd")+"<br>");
        session.removeAttribute("userPwd");
        out.println(session.getAttribute("userId"));
        out.println(session.getAttribute("userPwd"));

    %>
</body>
</html>
