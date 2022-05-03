<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td colspan="2"><jsp:include page="module/top.jsp" flush="false" /></td>
    </tr>
    <tr>
        <td valign="top"><jsp:include page="module/left.jsp" flush="false" /></td>
        <td valign="top">레이아웃1 <br><br><br></td>
    </tr>
    <tr>
        <td colspan="2"><jsp:include page="module/bottom.jsp" flush="false"/> </td>
    </tr>
</table>
</body>
</html>
