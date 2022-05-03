<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String type = request.getParameter("type");
        if (type==null){return;}
    %>
    <br>
    <table border="1" bgcolor="#00cccc">
        <tr>
            <td>타입</td>
            <td><b><%=type%></b></td>
        </tr>
        <tr>
            <td>특징</td>
            <td>
                <%
                    if(type.equals("A")){
                %>강한 내구성<%
                } else if (type.equals("B")) {
                        %>뛰어난 대처 능력 <%}%>



            </td>
        </tr>
    </table>
</body>
</html>
