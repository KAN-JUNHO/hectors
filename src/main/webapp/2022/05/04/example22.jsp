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
    <jsp:useBean id="book" class="org.global.conan.BookBean"/>
    <jsp:setProperty name="book" property="*"/>
    <%

        request.setAttribute("book",book);
    %>
    <jsp:forward page="bookOutput.jsp"/>
</body>
</html>
