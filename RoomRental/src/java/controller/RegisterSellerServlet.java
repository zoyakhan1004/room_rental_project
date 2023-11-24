/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.UserDTORegister;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Registrant;

/**
 *
 * @author ADM
 */
public class RegisterSellerServlet extends HttpServlet {
    
    
 public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("registerSeller.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String aadhar=request.getParameter("aadhar");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String gender=request.getParameter("gender");
        
        UserDTORegister user=new UserDTORegister();
        user.setName(name);
        user.setPhone(phone);
        user.setAadhar(aadhar);
        user.setUsername(username);
        user.setPassword(password);
        user.setGender(gender);
        
        Registrant r1 = new Registrant();
        boolean register= r1.isRegister(user);
        
        if(register)
        {
            response.sendRedirect("loginSeller.html");
        }
        else
        {
            response.sendRedirect("registerSeller.html");
        }
    }
}
