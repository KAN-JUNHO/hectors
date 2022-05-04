<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.global.conan.BookBean" %><%--
  Created by IntelliJ IDEA.
  User: seotaesu
  Date: 2022/05/04
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%
  String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
  String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
  String ORACLE_ID = "scott";
  String ORACLE_PASSWORD = "tiger";

  String sql = "SELECT * FROM BOOK";

  Class.forName(JDBC_DRIVER);

  Connection connection = DriverManager.getConnection(JDBC_URL, ORACLE_ID, ORACLE_PASSWORD);

  ResultSet rs = null;
  PreparedStatement pstmt = connection.prepareStatement(sql);;

  rs = pstmt.executeQuery(sql);

  ArrayList<BookBean> bookList = new ArrayList<BookBean>();

  while (rs.next()) {
    bookList.add(new BookBean(rs.getString(1),rs.getString(2), rs.getString(3)));
  }

  request.setAttribute("bookList", bookList);
%>

<c:forEach var="book" items="${bookList}">
  ${book.title} ${book.author} ${book.publisher} <br>
</c:forEach>


<table border="1">
  <tr>
    <th>BOOK ID</th>
    <th>BOOK NAME</th>
    <th>PUBLISHER</th>
    <th>PRICE</th>
  </tr>
</table>
</body>
</html>
