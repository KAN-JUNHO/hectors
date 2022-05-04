<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach var="i" begin="2" end="9">
        <c:forEach var="j" begin="2" end="9">
            ${i}*${j}=${i*j}<br>
        </c:forEach>
    </c:forEach>
    <hr>
    <c:forEach var="k" begin="1" end="10" step="2">
        ${k}
    </c:forEach>
</body>
</html>
