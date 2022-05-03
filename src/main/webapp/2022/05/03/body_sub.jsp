<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    body_sub에서 name 패러미터 값 : <%=request.getParameter("name")%>
    <br>name 파라미터 값 목록:
    <ul>
        <%
            String[] names = request.getParameterValues("name");
            for(String name: names){
        %>
        <li><%=name%></li>
        <%}%>
    </ul>
</body>
</html>
