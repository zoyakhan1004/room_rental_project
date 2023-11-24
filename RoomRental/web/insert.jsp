<%-- 
    Document   : insert
    Created on : 2 Nov, 2022, 8:03:07 PM
    Author     : ADM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #828a95;
color: white;  
}  
.container {  
    padding: 50px;  
  background-color: #181d27;
border-radius: 15px;
  box-shadow: 0 20px 40px rgba(38, 33, 61, 0.5);  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #f7f5fb;  
  color: #181d27;  
  padding: 16px 20px;
  display:block;
  margin: auto;  
  border: none;  
  cursor: pointer;  
  width: 30%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
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
        <form action="HostelRegisterServlet" method="post">  
  <div class="container">
  <center>  <h1>Hostel Registration Form</h1> </center>  
  <hr>
  <label>Hostel-name:</label>   
<input type="text" name="name" placeholder= "Name" size="15" required /> 
<label>Address:</label>   
<input type="text" name="address" placeholder= "Address" size="15" required /> 
<label>
Pincode :  
</label>  
<input type="text" name="pincode" placeholder="Pincode" size="10" required/>
<label>   
Hostel-ID:  
</label>  
<input type="text" name="hostelId" placeholder="Hostel-ID" size="12" required/>
<label>
Contact Number :  
</label>  
<input type="text" name="phone" placeholder="Phone-number" size="10" required/>

<label>Number of rooms:</label>    
<input type="text" name="numberbed" placeholder="Number of rooms" size="5" required />

<label>   
    <b>Facilities : </b> 
</label>
<br>
<br>
<label>   
  Bed:  
</label><br>  
<input type="radio" value="single" name="bed" checked > Single-bed  
<input type="radio" value="double" name="bed"> Double-bed
<br>
<br>
<label>   
  Air-Conditioned:  
</label><br>  
<input type="radio" value="Yes" name="ac" checked > Yes   
<input type="radio" value="No" name="ac"> No 
<br>
<br>
<label>   
  Fridge :  
</label><br>  
<input type="radio" value="Yes" name="fridge" checked > Yes  
<input type="radio" value="No" name="fridge"> No
<br>
<br>
<label>   
  Wi-Fi:  
</label><br>  
<input type="radio" value="Yes" name="wifi" checked > Yes  
<input type="radio" value="No" name="wifi"> No
<br>
<br>
<label>   
  Geyser:  
</label><br>  
<input type="radio" value="Yes" name="geyser" checked > Yes  
<input type="radio" value="No" name="geyser"> No

<button type="submit" class="registerbtn">Register</button>    
</form>
    </body>
</html>
