<%-- 
    Document   : updatepd
    Created on : 3 Nov, 2019, 6:12:38 PM
    Author     : pooja
--%>

<%@ page language = "java" contentType = 
  "text/html; charset = ISO-8859-1"
  import = "java.io.*"
  import = "java.sql.*"
  import = "java.util.*"
  import = "javax.sql.*"
  import = "java.sql.ResultSet"
  import = "java.sql.Statement"
  import = "java.sql.Connection"
  import = "java.sql.DriverManager"
  import = "java.sql.SQLException"
%>
<%
  Connection con = null;  
  PreparedStatement ps = null;


  String name = request.getParameter("pname");
  String status = request.getParameter("pstatus");
  String phone = request.getParameter("pphone");
  
 
%>
<html>
<head>
  <title>Updating Database</title>
</head>
<body>
<%
  try {
  Class.forName("com.mysql.jdbc.Driver");
  con =DriverManager.getConnection 
  ("jdbc:mysql://localhost:3306/pe", "root", "1nt17cs121");
  ps = con.prepareStatement("update pet set status = ? where name = ? and ownerphone = ?");
  ps.setString(1, status);
  ps.setString(2, name);
  ps.setString(3, phone);
  
  ps.executeUpdate();
  %>
  Database successfully Updated!<br>
  <%
  if(ps.executeUpdate()>=1){
      response.sendRedirect("Adopt.jsp");
  }
 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
}
%>
</body>
</html>