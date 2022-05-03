<%--
  Created by IntelliJ IDEA.
  User: seotaesu
  Date: 2022/05/03
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page buffer="1kb" %> <!-- none | 1kb -->
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int total = out.getBufferSize();
    out.print("첫번째 텍스트임");
    out.clearBuffer();    // 버퍼의 내용 지움
    out.print("출력버퍼 크기 : " + total);
    out.print("<br> 사용되지 않은 버퍼 크기 : " + out.getRemaining());
    out.flush();
    out.print("<br>flush 후 버퍼의 크기 : " + out.getRemaining());
%>
<hr>
<h3>out.print() 메소드</h3>
<%
    out.print(10);
    out.print(true);
    out.print("aaa");
    out.print("가");
    out.print(new java.io.File("/"));
    out.print("버퍼의 크기 : " + out.getRemaining());
%>
</body>
</html>
