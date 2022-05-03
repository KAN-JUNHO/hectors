<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-02
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("userId");
        String userPwd = request.getParameter("userPwd");
        if (userId.equals("admin") && userPwd.equals("admin")){
            response.sendRedirect("loginSuccess.jsp");
        }else {
            response.sendRedirect("loginFail.jsp");
        }
        %>
아이디 : <%= userId%>/ 비밀번호 : <%= userPwd%>

</body>
</html>
