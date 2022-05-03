<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        ul{
            list-style:none;
            padding-left:0px;
        }

        .main_img{
            width: 500px;
        }
    </style>
</head>
<body>
<%
    String target = request.getParameter("target");

    if(target == null){
        target = "../include/home.jsp";
    } else {
        target = request.getParameter("target") + ".jsp";
    }
%>
<table border="1">
    <tr>
        <td colspan="2"><jsp:include page="../include/top.jsp"/></td>
    </tr>
    <tr>
        <td valign="top"><jsp:include page="../include/menu.jsp"/></td>
        <td><jsp:include page="<%=target%>"/></td>
    </tr>
    <tr>
        <td colspan="2"><jsp:include page="../include/bottom.jsp"/></td>
    </tr>
</table>
</body>
</html>