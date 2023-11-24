

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
            Body {  
            font-family: Calibri, Helvetica, sans-serif;  
            background-color: #828a95;  
             }  
            a{
            margin:30px 5px;
            padding:2px;
            border: 3px solid black;
            border-radius:6px;
            text-decoration:none;
            background:black;
            color: cyan;
            font-size: 18px;
            }
            a:hover{
                color: cyan;
                 text-decoration: underline;
            }
            div{
                background-color: #181d27;
  width: 90vmin;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left: 50%;
  padding: 80px 120px;
  border-radius: 15px;
  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);
  
            }
</style>
    </head>
    <body>
        
        <p>
          <%
            String username = (String)session.getAttribute("username");
            if(username==null){
                response.sendRedirect("loginSeller.html");
            }
          %>
          </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <div>
        <p align="center">
            <a href="insert.jsp">Insert Hostels</a>
            <a href="view.jsp"> View Hostels</a>
            <a href="update1.jsp">Update Hostels</a>
            <a href="remove1.jsp">Remove Hostels</a>
            <a href="logout.jsp">Log out</a>            </p>
        </div>
    </body>
</html>
