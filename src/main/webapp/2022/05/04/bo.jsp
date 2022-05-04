<%@ page import="org.global.conan.BookBean" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <% BookBean book = new BookBean();%>
    <c:set target="<%=book%>" property="title" value="코스모스"/>
    <%=book.getTitle()%><br>
    <c:set var="b" value="<%=book%>"/>
    <c:set target="${b}" property="author" value="세이건"/>
    ${b.author}

</body>
</html>
