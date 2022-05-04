<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String str = request.getParameter("msg");
  %>
  <c:catch var="e">
    <% if (str.equals("add")){
      out.println(str);
    }%>
  </c:catch>
  <c:out value="${e}"/>
</body>
</html>
