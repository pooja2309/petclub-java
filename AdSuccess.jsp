<%-- 
    Document   : Adopt
    Created on : 22 Sep, 2019, 3:45:57 PM
    Author     : pooja
--%>

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
%>
<%
String name=(String)session.getAttribute("name");
%>
<h3 style="color:orangered;font-family: Comic Sans MS;">
    
    Hello, <%=name %><br>   
     Successfully Advertised!      
        </h3>

        
        
    </body>
</html>
