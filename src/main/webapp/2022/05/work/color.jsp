<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-02
  Time: 오후 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String color = request.getParameter("color");
    %>
    <%=name%> 이름이다.!
<%--asdfjflkasdjafdskl--%>
<%--    <%=name%> 의 좋아하느 색깔은 <%=color%>--%>
    <style>
        body{
            background: <%=color%>;
        }
    </style>

</body>
</html>
