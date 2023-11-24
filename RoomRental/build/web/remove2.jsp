<%-- 
    Document   : remove2
    Created on : 8 Nov, 2022, 2:55:56 PM
    Author     : ADM
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String username = (String)session.getAttribute("username");
            if(username==null){
                response.sendRedirect("loginSeller.html");
            }
        String hostelid = request.getParameter("hostelid");
        try
        {
            
            Statement st= DBConnector.getStatement();
            String query="DELETE from hostels where username='"+username+"'AND hostelid='"+hostelid+"'";
            
            int i= st.executeUpdate(query);
            if(i>0)
            {
                response.sendRedirect("remove1.jsp");
            }
            else{
                response.sendRedirect("remove1.jsp");
            }
            }
        catch(SQLException e){
            System.out.println(e);
        }
        %>
    </body>
</html>
