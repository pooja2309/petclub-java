<%-- 
    Document   : LoginSuccess
    Created on : 22 Sep, 2019, 3:19:02 PM
    Author     : pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginSuccess</title>
    </head>
    <body>
          <jsp:include page="userpage.jsp" />
        <% 
	String name =  (String)session.getAttribute("name");
        String location = (String)session.getAttribute("location");
        String status = (String)session.getAttribute("status");
        String phone = (String)session.getAttribute("phone");
        %>
        <h3 style="color:orangered;font-family: Comic Sans MS;">
            Welcome, <%=name %><br>
            Location : <%=location %> &nbsp;&nbsp;
            Status : <%=status%>
           
        </h3>
<%
        session.setAttribute("hname",name);  
        session.setAttribute("phone", phone);
        session.setAttribute("status",status);
        session.setAttribute("location",location);
        
%>

    </body>
</html>
