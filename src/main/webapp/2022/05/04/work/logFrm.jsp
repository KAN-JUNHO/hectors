<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="logProc.jsp" method="post">
    <table border="1" width="500px">
        <tr>
            <td width="100px">아이디</td>
            <td><input type="text" name="userId"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="text" name="userPwd"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phoneNo"></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="제출" style="display: block">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
