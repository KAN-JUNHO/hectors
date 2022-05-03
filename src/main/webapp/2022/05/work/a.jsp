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
<form action="forwordRequest.jsp" method="post">
    <p>당신의 혈액형은?</p>
    <input type="radio" name="bloodType" value="a">A형<br>
    <input type="radio" name="bloodType" value="b">B형<br>
    <input type="radio" name="bloodType" value="o">O형<br>
    <input type="radio" name="bloodType" value="ab">AB형<br>
     <input type="submit" value="보내기">
</form>
</body>
</html>
