<%@ page import="java.util.ArrayList" %>
<%@ page import="org.global.conan.BookBean" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList<BookBean> bookList = new ArrayList<BookBean>();
        bookList.add(new BookBean("명탐정","도일","모름"));
        bookList.add(new BookBean("명탐정2","도일2","모름2"));

        String[] bookCode = {"소설","역사","인문","정치","종교","여행","과학","만화"};%>

    <c:set var="list" value="<%=bookList%>"/>
    <c:forEach var="item" items="${list}">
        ${item.title}/${item.author}/${item.publisher}<br>
    </c:forEach>
    <hr>
    <c:set var="code" value="<%=bookCode%>"/>
    <c:forEach var="item" items="${code}">
        <c:out value="${item}"/>
    </c:forEach>
</body>
</html>
