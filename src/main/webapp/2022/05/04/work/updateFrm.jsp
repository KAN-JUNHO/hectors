<%@ page import="java.sql.*" %>

<%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 5:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String dbID="scott", dbPWD="tiger";
    Connection conn = null;
    PreparedStatement pstmt=null;
    ResultSet rs = null;
    String sql = null;
    String first_sql = null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url, dbID, dbPWD);
        out.println("DB연결성공");

        sql = "select * from members where userId=?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "qwe");
            rs = pstmt.executeQuery();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        while (rs.next()){
            try {
                String userId = rs.getString("userId");
                String userPwd = rs.getString("userPwd");
                String userName = rs.getString("userName");
                String phoneNo = rs.getString("phoneNo");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String regDate = rs.getString("regDate");

            }catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }



%>
//디비에 연결
//    pstmt = conn.prepareStatement("select * from members where userId = 'qer'");
//화면에 출력 --> rs = pstmt.executeQuery();
//while(rs.next())
//    rs.getString(1) -->userId
//    rs.getString(2) -->

%>
<form action="logProc.jsp" method="post">
    <table border="1" width="500px">
        <tr>
            <td width="100px">아이디</td>
            <td><input type="text" name="userId"><%=rs.getString(1)%></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="text" name="userPwd"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phoneNo"></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="수정스">
            </td>
        </tr>
    </table>
    <%
        String userId = request.getParameter("userId");
    %>
</form>
</body>
</html>
