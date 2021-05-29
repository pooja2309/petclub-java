<%-- 
    Document   : SignupSuccess
    Created on : 22 Sep, 2019, 12:32:05 PM
    Author     : pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table#nat{
	width: 50%;
	background-color: whitesmoke;
        }</style>
    </head>
    <body>
       
        <jsp:include page="Login.jsp" />
        </br></br>
        
        <% 
	String name =  request.getParameter("name");
	String phone = request.getParameter("phone");
	
        %>
        
    <center>
            <table id ="nat">
                <span style="color:white"> Successful Registeration! </span>
            <tr>
                <td><center>Name</center></td>
            <td><%=name %></td>
            </tr>
            <tr>
                <td><center>Phone</center></td>
            <td><%= phone %></td>
            </tr>

            </table>
    </center>
    </body>
</html>
