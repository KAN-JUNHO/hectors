<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <jsp:forward page="<%=request.getParameter("bloodType")%>">
            <jsp:param  name = "bloodType" value='<%=request.getParameter("bloodType")%>'/>
            <jsp:param  name = "name" value="코난"/>
        </jsp:forward>

</body>
</html>
