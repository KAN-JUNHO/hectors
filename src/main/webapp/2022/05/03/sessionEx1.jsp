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
    session.setAttribute("userId",userId);
    session.setMaxInactiveInterval(120);
%>
    <h1>세션 예제</h1>
<form action="sessionEx2.jsp" method="post">
    <input type="radio" name="season"  value="봄">봄
    <input type="radio" name="season"  value="여름">여름
    <input type="radio" name="season"  value="가을">가을
    <input type="radio" name="season"  value="겨울">겨울
    <br>

    <input type="radio" name="fruit" value="사과">사과

    <input type="submit"  value="결과보기">
</form>

</body>
</html>
