<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table  border="1">
    <tr>
        <td>제품번호</td>
        <td>P111</td>
    </tr>
    <tr>
        <td>가격</td>
        <td>10,000원</td>
    </tr>
</table>
<jsp:include page="infosub.jsp" flush="false">
    <jsp:param name="type" value="B"/>
</jsp:include>
</body>
</html>
