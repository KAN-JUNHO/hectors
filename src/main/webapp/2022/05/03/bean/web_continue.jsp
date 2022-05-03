<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오후 5:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String sessionId = session.getId();
    long lastTime = session.getLastAccessedTime();
    long startTime = session.getCreationTime();
    long lapse = (lastTime - startTime) / 1000 / 60;
    out.println("세션 아이디 : "+sessionId+"<br>");
    out.println("요청 시작 시간 : "+startTime+"<br>");
    out.println("요청 마지막 시간 : "+lastTime+"<br>");
    out.println("웹사이트 경과 시간 : "+lapse+"분<br>");
  %>
</body>
</html>
