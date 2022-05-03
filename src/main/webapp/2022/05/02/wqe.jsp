        <%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-02
  Time: 오후 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Enumeration<?> en = request.getHeaderNames();
    String headerName = null;
    while (en.hasMoreElements()) {
        headerName = (String) en.nextElement();
        String headerValue = request.getHeader(headerName);

%>
<%=headerName%> : <%=headerValue%><br>
<%
    }
%>
</body>
</html>
