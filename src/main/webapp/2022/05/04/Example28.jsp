<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forTokens items="소설/역사/인문/정치/주호/준호/바보/전데" delims="/" var="token" >
        ${token}
    </c:forTokens>


</body>
</html>
