<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 12:41
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
        %>

            inclue 액션태긔 의 탑
        <p>
            <b>내이름은 <%=name%> 탐정입</b>
        <hr>
</body>
</html>
