<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    include전 name 패러미터 : <%=request.getParameter("name")%>
    <hr>
    <% request.setCharacterEncoding("utf-8");%>

    <jsp:include page="body_sub.jsp" flush="false">
        <jsp:param name="name" value="장미"/>
    </jsp:include>
    <hr>
    include후 name 파라미터 : <%=request.getParameter("name")%>
</body>
</html>
