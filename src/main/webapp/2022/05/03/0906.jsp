<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오전 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        response.setHeader("Cache-Control","use_cache");
        response.addHeader("contentType","text/html; charset=utf-8");
        response.setDateHeader("date",1L);
    %>
    Cache-cotrol:<%=response.getHeader("Cache-Control") %>
    contentType:<%=response.getHeader("contentType")%>
    date: <%=response.getHeader("date")%>
    <p>이페이지는 5초마다 새로고침</p>
<%--    <% response.setIntHeader("Refresh",5);%>--%>
    <p><%=(new java.util.Date())%></p>
</body>
</html>
