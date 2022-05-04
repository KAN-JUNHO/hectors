<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Cookie cookie = new Cookie("appleCookie", "apple");
        cookie.setMaxAge(10*1);
        cookie.setValue("tea");
        response.addCookie(cookie);
    %>
    <h3>--쿠키 생성 ㅋ---</h3>
    <p> 쿠키 내용 확인은 <a href="tasteCookie.jsp">dd</a></p>

</body>
</html>
