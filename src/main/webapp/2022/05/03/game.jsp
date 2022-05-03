<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-03
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  서버명 : <%=application.getServerInfo()%><br>
  서블릿버전:<%=application.getMajorVersion()%>,<%=application.getMinorVersion()%><br>
    URL:
    <%=application.getRealPath("/")%><br>
    <h3>/jspApps 리스트</h3>
    <% java.util.Set<String> list = application.getResourcePaths("/");
    if (list!=null){Object[] obj = list.toArray();
        for (int i = 0; i < obj.length; i++) {
            out.print(obj[i]+"<br>");
        }
    }
    %>

  <%=application.getInitParameter("adminId")%>
  <%=application.getInitParameter("adminPwd")%>
</body>
</html>
