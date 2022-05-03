<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-02
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <% if (request.getMethod().equals("POST")){%>
    <%

        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("userId");
        String userPwd = request.getParameter("userPwd");
        //유효성 처리
        if (userId.isEmpty() || userPwd.isEmpty()){
            RequestDispatcher rd = request.getRequestDispatcher("loginFrm.jsp");
        }
        //로긴 처리
        if (session.isNew() || session.getAttribute("userId")==null){
            session.setAttribute("userId",userId);
            out.print("로그인");

        }else {
            out.print("이미 로긴상탱");
        }
        %>
    아이디 : <%= userId%>/ 비밀번호 : <%= userPwd%>
    <%
        } else if (request.getMethod().equals("GET")) {
            if (session!=null || session.getAttribute("userId")!=null){
                session.invalidate();
                out.print("로그아웃 작업이 완료됨");
            }
        }
    %>
</body>
</html>
