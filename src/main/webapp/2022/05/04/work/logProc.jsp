<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String userId = request.getParameter("userId");
        String userPwd = request.getParameter("userPwd");
        String userName = request.getParameter("userName");
        String phoneNo = request.getParameter("phoneNo");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
    %>
    <table border="1">
        <caption>사용자가 입력한 데이터</caption>
        <tr>
            <td>아이디</td>
            <td><%=userId%></td>
            <td>비밀번호</td>
            <td><%=userPwd%></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><%=userName%></td>
            <td>전화번호</td>
            <td><%=phoneNo%></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><%=address%></td>
            <td>이메일</td>
            <td><%=email%></td>
        </tr>
    </table>
    <hr>
    <table width="100%" border="1">
        <caption>테이블에서 읽어온 데이터</caption>

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
                first_sql = "insert into members values(?,?,?,?,?,?,?)";
                sql = "select * from members";
                try {
                    pstmt = conn.prepareStatement(first_sql);
                    pstmt.setString(1,userId);
                    pstmt.setString(2,userPwd);
                    pstmt.setString(3,userName);
                    pstmt.setString(4,phoneNo);
                    pstmt.setString(5,address);
                    pstmt.setString(6,email);
                    pstmt.setString(7, null);
                    pstmt.executeUpdate();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }


        pstmt=conn.prepareStatement(sql);
        rs=pstmt.executeQuery();
                while(rs.next()){

        %>
        <tr>
            <td>아이디</td>
            <td><%=rs.getString(1)%></td>
            <td>비밀번호</td>
            <td><%=rs.getString(2)%></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><%=rs.getString(3)%></td>
            <td>전화번호</td>
            <td><%=rs.getString(4)%></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><%=rs.getString(5)%></td>
            <td>이메일</td>
            <td><%=rs.getString(6)%></td>
        </tr>

        <%}
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try {
                if (conn != null) {
//                    conn.commit();
                    conn.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        %>
    </table>
    <table border="1">
        <caption>테이블에서 읽어온 데이터</caption>

    </table>

</body>

</html>
