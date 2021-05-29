<%-- 
    Document   : Adopt
    Created on : 22 Sep, 2019, 3:45:57 PM
    Author     : pooja
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <jsp:include page="userpage.jsp" />
    <style>
        table{
            font-family: "Comic Sans MS";
            font-size: 20px;
        }
    </style>
    </head>
    
    <body>
      
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "pe";
String userId = "root";
String password = "1nt17cs121";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
Blob image = null;%>
<%
String name=(String)session.getAttribute("hname");
%>

<h3 style="color:orangered;font-family: Comic Sans MS;">
            Hello, <%=name %><br>
            <a href="update.jsp">Manage Ad</a>
           
        </h3>

<h2 align="center"><font color="orange" ><strong><marquee>ADOPT! DON'T SHOP...</marquee></strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td width="200"><b>Name</b></td>
<td width="200"><b>Location</b></td>
<td width="280"><b>Breed</b></td>
<td width="280"><b>Enquire </b></td>
<td width="280"><b>Status</b></td>

</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM pet";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
 

%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("name")%></td>
<td><%=resultSet.getString("location")%></td>
<td><%=resultSet.getString("breed")%></td>
<td><%=resultSet.getString("ownerphone")%></td>
<td><%=resultSet.getString("status")%></td>

 
</tr>

<%
}
}
 catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        
        
        
        
        
        
    </body>
</html>
