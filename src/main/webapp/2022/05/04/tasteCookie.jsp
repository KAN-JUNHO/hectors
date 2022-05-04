<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오전 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies!=null){
            out.println("현재 설정된 쿠키의 수 : "+cookies.length);
            out.println("<br/>====================<br/>");
            for (int i = 0; i < cookies.length; i++) {
                out.println("쿠키 속성 이름 ["+i+"]" + cookies[i].getName()+"<br>");
                out.println("쿠키 속성 값 ["+i+"]" + cookies[i].getValue()+"<br>");
                out.println("-----------------------<br>");
            }
        }
    %>
</body>
</html>
