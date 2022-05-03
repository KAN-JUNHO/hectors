<%@ page import="org.global.conan.Members" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Members mem = new Members();
  mem.setUserId("conan");
  mem.setName("코난");
%><html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");
  String name = request.getParameter("name");
  String email = request.getParameter("email");

%>
<table border="1">
  <tr>
    <td>아이디</td>
    <td><%=id%></td>
    <td>암호</td>
    <td><%=pass%></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><%=name%></td>
    <td>이메일</td>
    <td><%=email%></td>
  </tr>
</table>
</body>
</html>
