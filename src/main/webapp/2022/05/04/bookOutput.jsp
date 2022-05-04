<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    ${book.title}<br>
    ${book.author}<br>
    ${book.publisher}
</body>
</html>
