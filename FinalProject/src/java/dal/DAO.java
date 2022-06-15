/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.User;

/**
 *
 * @author Huu
 */
public class DAO extends DBContext {

    public User check(String username, String password) {
        String sql = "SELECT *"
                + "  FROM [dbo].[User]\n"
                + "  where name=? and password=?";
         try{
             PreparedStatement st=connection.prepareStatement(sql);
             st.setString(1, username);
             st.setString(2, password);
             System.out.println(username+" "+password);
             ResultSet rs=st.executeQuery();
             if (rs.next())
             {
                // User b=new User
                 User a=new User(rs.getString("password"), rs.getString("name"));
                 return a;
             }
         }catch(SQLException e){
             System.out.println(e);
         }
        return null;
    }
    
    public static void main(String[] args) {
        DAO d=new DAO();
        User a=d.check("admin", "admin");
        System.out.println(a);
    }
}
