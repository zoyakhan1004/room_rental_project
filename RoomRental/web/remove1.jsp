<%-- 
    Document   : remove
    Created on : 8 Nov, 2022, 2:44:34 PM
    Author     : ADM
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #828a95;  
}  
            .container {   
        padding-left: 165px;
    padding-top: 24px;
    padding-right: 130px;
    padding-bottom: 24px;  
        background-color: #181d27;
        color: white;
        border-radius: 15px;
  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);
    }
    table{
        border: 3px solid #f1f1f1;
        width: 119%;
        margin: 0px 0px 0px -118px;
    }
        </style>
    </head>
    <body>
        <%
            String username = (String)session.getAttribute("username");
            if(username==null){
                response.sendRedirect("loginSeller.html");
            }
          %>
          <%
          try
        {
            ResultSet rs= null;
            Statement st= DBConnector.getStatement();
            String query=  "SELECT * from hostels where username='"+username+"'";
            rs= st.executeQuery(query);
            %>
            <br>
            <br>
            <br>
            <br>
            <div class="container">
            <table width="1000">
                <tr>
                    <td><b>Name:</b></td>
                    <td><b>Address:</b></td>
                    <td><b>Pincode:</b></td>
                    <td><b>Hostel ID:</b></td>
                    <td><b>Contact Number:</b></td>
                    <td><b>Number of beds:</b></td>
                    <td><b>Type of bed:</b></td>
                    <td><b>AC:</b></td>
                    <td><b>Fridge:</b></td>
                    <td><b>Wi-FI:</b></td>
                    <td><b>Geyser:</b></td>
                </tr>
 
        <%
     
     while(rs.next())
     {
         %>
         <tr>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <td>
                    <form action="remove2.jsp" method="post">
                        <input type="hidden" value="<%=rs.getString(5)%>" name="hostelid" required>
                        <button type="submit">Remove</button>
                    </form>
                    </td>
                        
         </tr>
         <%
        }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        %>
        </table>
    </body>
</html>
