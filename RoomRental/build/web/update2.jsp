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
        String name= request.getParameter("name");
        String address= request.getParameter("address");
        String pincode= request.getParameter("pincode");
        String phone= request.getParameter("phone");
        String numberbed= request.getParameter("numberbed");
        String bed= request.getParameter("bed");
        String ac= request.getParameter("ac");
        String fridge= request.getParameter("fridge");
        String wifi= request.getParameter("wifi");
        String geyser= request.getParameter("geyser");
        
        try
        {
            Statement st= DBConnector.getStatement();
            String query="UPDATE hostels SET name='"+name+"',address='"+address+"',pincode='"+pincode+"',phone='"+phone+"',numberbed='"+numberbed+"',bed='"+bed+"',ac='"+ac+"',fridge='"+fridge+"',wifi='"+wifi+"',geyser='"+geyser+"'where hostelid='"+hostelid+"'";
            
            int i= st.executeUpdate(query);
            if(i>0)
            {
                response.sendRedirect("update1.jsp");
            }
            else{
                response.sendRedirect("update1.jsp");
            }
            }
        catch(SQLException e){
            System.out.println(e);
        }
        %>
    </body>
</html>

