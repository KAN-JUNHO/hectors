<%--
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
        String saveId = request.getParameter("saveId");
        String userId = request.getParameter("userId");
        String userPwd = request.getParameter("userPwd");

        Cookie cookie = new Cookie("saveId", userId);

        if (saveId != null) {
            cookie.setMaxAge(60 * 60 * 24 * 365);
            response.addCookie(cookie);
        } else {
            cookie.setMaxAge(-3600);
//            response.addCookie(cookie);
        }
    %>
    <% if (userId.equals(application.getInitParameter("adminId")) && userPwd.equals(application.getInitParameter("adminPwd"))) { %>
    로그인에 성공했음 <br>

    <a href="loginFrm.jsp">로그인 폼으로</a>
    <% } else if(!userId.equals(application.getInitParameter("adminId"))) { %>
        아이디 다름
    <% } else if(!userPwd.equals(application.getInitParameter("adminPwd"))) { %>
        비번 다름
   <% } %>
</body>
</html>
