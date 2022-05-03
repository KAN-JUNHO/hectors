<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오전 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <jsp:forward page="param_data.jsp">
      <jsp:param name="userId" value='admin'/>
      <jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자")%>'/>
  </jsp:forward>
<p>자바 서버 페이지</p>
</body>
</html>
