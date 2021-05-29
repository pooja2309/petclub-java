<%-- 
    Document   : Logout
    Created on : 22 Sep, 2019, 4:42:09 PM
    Author     : pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
    s
          <%
            session.invalidate();
            response.sendRedirect("index.html");
            %>
    </body>
</html>
