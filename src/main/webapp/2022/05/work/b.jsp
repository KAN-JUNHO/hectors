<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <p>
        이름은 <%= request.getParameter("bloodType")%> 의 혈액형은 <%=request.getParameter("name")%>
</body>
</html>
