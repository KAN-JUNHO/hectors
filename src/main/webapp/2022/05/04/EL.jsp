<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <% request.setAttribute("name","conan");%>
    속성 "name" : <%=request.getAttribute("name")%><br>
    속성 "name" : ${name}
    request의 name : ${requestScope.name}<br>
    사용자의 요청 패러미터 name : ${param.name}
    Literal:${"Literals"}
  <br> Operation : ${5>3}
  <br> Implict Object: ${header["host"]}<br>

    <%
        String[] myList = {"conan","rose","ran"};
        List<String> list = Arrays.asList(myList);
        out.println("두번째 요소 : "+list.get(1)+"<br>");%>
    <%request.setAttribute("list",list);%>
    두번째 요소 : ${list[1]} <br>
    <%
        HashMap<String, String> board = new HashMap<>();
        board.put("title","명탐정 코난");
        request.setAttribute("board",board);
    %>
    ${board.title}

</body>
</html>
