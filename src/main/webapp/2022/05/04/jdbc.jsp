<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: BIT
  Date: 2022-05-04
  Time: 오후 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="100%" border="1">
    <tr>
        <td>bookid</td>
        <td>bookname</td>
        <td>publish</td>
        <td>price</td>
    </tr>
<%
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String dbID="scott", dbPWD="tiger";
    Connection conn = null;
    PreparedStatement pstmt=null;
    ResultSet rs = null;
    String sql = null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url, dbID, dbPWD);
        out.println("DB연결성공");
        sql = "select * from book";
        Statement stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
//        pstmt=conn.prepareStatement(sql);
//        rs=pstmt.executeQuery();
        while(rs.next()){

        %>
        <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
        </tr>
<%}
}catch(Exception e){
    e.printStackTrace();
}finally{
    try {
        if (conn != null) {
            conn.commit();
            conn.close();
        }
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
}

%>
</table>
</body>
</html>
