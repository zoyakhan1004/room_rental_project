<%-- 
    Document   : update1
    Created on : 20 Nov, 2022, 6:22:40 PM
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
        padding-left: 24px;
    padding-top: 24px;
    padding-right: 130px;
    padding-bottom: 24px;  
        background-color: #181d27;
        color : white;
    }
    table{
        border: 3px solid #f1f1f1;
        margin: 0px 0px 0px -19px;
        border-radius: 15px;
  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);
    }
    input{
        width:110px;
    }
    button{
        background:#f7f5fb;
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
                    <td><b>Contact number:</b></td>
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
         <form action="update2.jsp" method="post">
         <tr>
                    <td><input type="text" value="<%=rs.getString(2)%>" name="name"></td>
                    
                    <td><input type="text" value="<%=rs.getString(3)%>" name="address"></td>
                    
                    <td><input type="text" value="<%=rs.getString(4)%>" name="pincode"></td>
                    
                    <td><%=rs.getString(5)%></td>
                    
                    <td><input type="text" value="<%=rs.getString(6)%>" name="phone"></td>
                    
                    <td><input type="text" value="<%=rs.getString(7)%>" name="numberbed"></td>
                    
                    <td><input type="text" value="<%=rs.getString(8)%>" name="bed"></td>
                    
                    <td><input type="text" value="<%=rs.getString(9)%>" name="ac"></td>
                    
                    <td><input type="text" value="<%=rs.getString(10)%>" name="fridge"></td>
                    
                    <td><input type="text" value="<%=rs.getString(11)%>" name="wifi"></td>
                    
                    <td><input type="text" value="<%=rs.getString(12)%>" name="geyser"></td>
                    
                    <input type="hidden" value="<%=rs.getString(5)%>" name="hostelid">
                    
                    <td><button type="submit">Update</button></td>
                    </form>      
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
