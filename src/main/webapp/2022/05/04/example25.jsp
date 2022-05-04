<%--
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
    <c:set var="num" value="${20}"/>
    점수 : <c:out value="${num}"/>은
    <c:if test="${num>60}">합격입니다.</c:if>
    <c:choose>
        <c:when test="${num>=90}">A학점입니다.</c:when>
        <c:when test="${num>=80}">A학점입니다.</c:when>
        <c:when test="${num>=70}">A학점입니다.</c:when>
        <c:when test="${num>=60}">A학점입니다.</c:when>
        <c:otherwise>F 학점입니다.</c:otherwise>
    </c:choose>
</body>
</html>
