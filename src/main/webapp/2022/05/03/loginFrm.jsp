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
    <% if (session.isNew() || session.getAttribute("userId")==null){
        String msg = (String) request.getAttribute("error");%>
    <form action="loginProc.jsp" method="post">
        ID : <input type="text" name="userId"><br>
        비밀번호:<input type="password" name="userPwd"><br>
        <input type="submit" value="로그인">
    </form>
    <%}else{%>
        <a href="loginProc.jsp">로그아웃</a>
   <%}%>

</body>
</html>
