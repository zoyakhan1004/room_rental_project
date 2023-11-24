/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.HostelDTORegister;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.HostelRegistrant;

/**
 *
 * @author ADM
 */
public class HostelRegisterServlet extends HttpServlet {
    
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session=request.getSession(true);
        String username=(String)session.getAttribute("username");
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String pincode=request.getParameter("pincode");
        String hostelid=request.getParameter("hostelId");
        String phone=request.getParameter("phone");
        String numberbed=request.getParameter("numberbed");
        String bed=request.getParameter("bed");
        String ac=request.getParameter("ac");
        String fridge=request.getParameter("fridge");
        String wifi=request.getParameter("wifi");
        String geyser=request.getParameter("geyser");
        
        HostelDTORegister user=new HostelDTORegister();
        user.setUsername(username);
        user.setName(name);
        user.setAddress(address);
        user.setPincode(pincode);
        user.setHostelid(hostelid);
        user.setPhone(phone);
        user.setNumberbed(numberbed);
        user.setBed(bed);
        user.setAc(ac);
        user.setFridge(fridge);
        user.setWifi(wifi);
        user.setGeyser(geyser);
        
        HostelRegistrant r1 = new HostelRegistrant();
        boolean register= r1.isRegister(user);
        
        if(register)
        {
            response.sendRedirect("sellerhome.jsp");
        }
        else
        {
            response.sendRedirect("insert.jsp");
        }
    }
}
