<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  이동하고 싶은 페이지
  <%String p=request.getParameter("page")+".jsp";%>

    <input type="text" name="page" >
    <input type="button" value="이동">

  <jsp:forward page="<%=p%>"/>
</body>
</html>
