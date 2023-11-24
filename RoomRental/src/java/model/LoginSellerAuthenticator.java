/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ADM
 */
public class LoginSellerAuthenticator {
    
    public boolean isLogin(UserDTO user)
    {
        String username=user.getUsername();
        String password=user.getPassword();
                
        String tablePassword="";
        try
        {
            Statement st= DBConnector.getStatement();
            String query= "SELECT password from sellers where username='"+username+"'";
            
            ResultSet rs= st.executeQuery(query);
            
            if(rs.next()){
                tablePassword=rs.getString(1);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        if(username!=null && password!=null && !username.trim().equals("") && password.equals(tablePassword))
        {
            return true;
        }
        return false;
    }
}
