<%-- 
    Document   : logout
    Created on : 18 Oct, 2022, 7:51:14 PM
    Author     : ADM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            response.sendRedirect("loginSeller.html");
            session.invalidate();
        %>
    </body>
</html>
