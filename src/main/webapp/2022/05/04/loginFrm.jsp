<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String userId = "";
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("saveId")) {
            userId = cookie.getValue();
        }
    }

%>
  관리자 로그인 <br>
  <form action="loginProc.jsp" method="post">
      아이디 : <input type="text" name="userId" value="<%=userId%>" > <input type="checkbox" name="saveId"  value="true">아이디 기억 <br>
      비밀번호 : <input type="password" name="userPwd" >
      <input type="submit" value="가자">
  </form>
</body>
</html>
