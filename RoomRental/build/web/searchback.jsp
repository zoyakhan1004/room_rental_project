<%-- 
    Document   : sellerback
    Created on : 6 Nov, 2022, 12:09:36 PM
    Author     : ADM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
            Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: cyan;  
}  
            .container {   
        padding-left: 165px;
    padding-top: 24px;
    padding-right: 130px;
    padding-bottom: 24px;  
        background-color: #e6adad;  
    }
    table{
        border: 3px solid #f1f1f1;
    }
        </style>
    </head>
    <body>
        <%
            String pincode=request.getParameter("pincode");
            String bed    =request.getParameter("bed");
            String wifi   =request.getParameter("wifi");
            String ac     =request.getParameter("ac");
            String geyser    =request.getParameter("geyser");
            String fridge    =request.getParameter("fridge");
        try
        {
            ResultSet rs= null;
            Statement st= DBConnector.getStatement();
            String query=  "SELECT * from hostels where pincode='"+pincode+"'AND wifi='"+wifi+"'AND ac='"+ac+"'AND geyser='"+geyser+"'AND bed='"+bed+"'AND fridge='"+fridge+"'";
            System.out.println(query);
            
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
                    <td><b>Phone number:</b></td>
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
         </tr>
         <%
        }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        %>
        </table>
        </div>
    </body>
</html>
