/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.HostelDTORegister;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADM
 */
public class HostelRegistrant {
    
    public boolean isRegister(HostelDTORegister user)
    {
        String username=user.getUsername();
        String name=user.getName();
        String address=user.getAddress();
        String pincode=user.getPincode();
        String hostelid=user.getHostelid();
        String phone=user.getPhone();
        String numberbed=user.getNumberbed();
        String bed=user.getBed();
        String ac=user.getAc();
        String fridge=user.getFridge();
        String wifi=user.getWifi();
        String geyser=user.getGeyser();
      
        
        int i=0;
        try
        {
            Statement st= DBConnector.getStatement();
            String query=  "INSERT INTO hostels VALUES('"+username+"','"+name+"','"+address+"','"+pincode+"','"+hostelid+"','"+phone+"','"+numberbed+"','"+bed+"','"+ac+"','"+fridge+"','"+wifi+"','"+geyser+"')";
            
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
