<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-02
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="color.jsp" method="get">
    이름: <input type="text" name="name">
    <br>
    좋아하는 색깔 :<select name="color" >
        <option value="red">red</option>
        <option value="blue">blue</option>
        <option value="green">green</option>
    </select>
    <br>
    <input type="submit"  value="보내기">
</form>
</body>
</html>
