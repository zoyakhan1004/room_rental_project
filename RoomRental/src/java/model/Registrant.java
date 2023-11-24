/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.UserDTORegister;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ADM
 */
public class Registrant {
    
    public boolean isRegister(UserDTORegister user)
    {
        String name=user.getName();
        String phone=user.getPhone();
        String aadhar=user.getAadhar();
        String username=user.getUsername();
        String password=user.getPassword();
        String gender=user.getGender();
        
        int i=0;
        try
        {
            Statement st= DBConnector.getStatement();
            String query=  "INSERT INTO sellers VALUES('"+name+"','"+phone+"','"+aadhar+"','"+username+"','"+password+"','"+gender+"')";
            
            i= st.executeUpdate(query);
        }
        catch(SQLException e){
            System.out.println(e);
        }
        if(i>0)
        {
            return true;
        }
        return false;
    }
}
