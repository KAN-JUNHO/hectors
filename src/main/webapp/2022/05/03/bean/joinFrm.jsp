<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:15
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="joinProc.jsp" method="post">
<table border="1">
  <tr>
    <td colspan="4" style="text-align: center">회원가입 정보</td>
  </tr>
  <tr>
    <td>아이디</td>
    <td><input name="id" type="text" /></td>
    <td>비밀번호</td>
    <td><input name="pass" type="text" /></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><input  name="name" type="text" /></td>
    <td>이메일</td>
    <td><input  name="email" type="text" /></td>
  </tr>
  <tr>
    <td colspan="4">
      <input type="submit" value="회원가입 "  >
    </td>
  </tr>
</table>
</form>
</body>
</html>
