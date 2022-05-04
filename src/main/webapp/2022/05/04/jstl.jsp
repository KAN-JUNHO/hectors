<%@ page import="org.global.conan.BookBean" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="name" value="amy"/><c:out value="${name}"/><br>
    <c:remove var="name"/> <c:out value="${name}"/><br>
    <%
        BookBean book1 = new BookBean("명탐정 홈즈", "코난 도일", "모름");
        request.setAttribute("bookOne",book1);
    %>
    <c:set var="title" value="${bookOne.title}"/><c:out value="${title}"/>
    <c:set var="author" value="<%=book1.getAuthor()%>"/>
    <c:out value="${author}"/>
    <hr>
    <c:set var="name">Wild</c:set> <c:out value="${name}"/><br>
    <%
        BookBean book2 = new BookBean("도리안 그레이의 초상", "오스카 와일드", "모름");
        request.setAttribute("bookTwo",book2);
    %>
    <c:set var="title" value="${bookTwo.title}"/><c:out value="${title}"/>
    <c:set var="author" value="<%=book2.getAuthor()%>"/>
    <c:out value="${author}"/>
</body>
</html>






