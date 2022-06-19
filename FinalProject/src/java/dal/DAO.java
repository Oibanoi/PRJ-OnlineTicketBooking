/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Movie;
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
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            System.out.println(username + " " + password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                // User b=new User
                User a = new User(rs.getInt("role"), rs.getString("password"), rs.getString("name"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(User c) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([password]\n"
                + "           ,[name]\n"
                + "           ,[email]\n"
                + "           ,[sex]\n"
                + "           ,[address]\n"
                + "           ,[phonenumber]\n"
                + "           ,[Role])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getPassword());
            st.setString(2, c.getName());
            st.setString(3, c.getEmail());
            st.setBoolean(4, c.isSex());
            st.setString(5, c.getAddress());
            st.setString(6, c.getPhonenumber());
            st.setInt(7, 0);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void insert(Movie c) {
        String sql = "INSERT INTO [dbo].[Movie]\n"
                + "           ([FilmID]\n"
                + "           ,[HotLevel]\n"
                + "           ,[Information]\n"
                + "           ,[Price]\n"
                + "           ,[Publish_date]\n"
                + "           ,[Duration]\n"
                + "           ,[status]\n"
                + "           ,[image])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getFilmID());
            st.setInt(2, c.getHotLevel());
            st.setString(3, c.getInformation());
            st.setFloat(4, c.getPrice());
            st.setDate(5, c.getPublish_date());
            st.setFloat(6, c.getDuration());
            st.setString(7, c.getStatus());
            st.setString(8, c.getImage());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public User getUserByName(String name) {
        String sql = "select * from User where name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User c = new User(rs.getInt("role"), rs.getString("password"), rs.getString("name"), rs.getString("email"), rs.getString("address"), rs.getString("phonenumber"), rs.getBoolean("sex"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
//    public List<Movie> getAllMovie(){
//        List<Movie> list = new ArrayList<>();
//        String sql = "select * from Categories";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                Category c = new Category(rs.getInt("id"), rs.getString("name"), rs.getString("describe"));
//                list.add(c);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//    }
    public static void main(String[] args) {
        DAO d = new DAO();
        d.insert(new Movie("1", "qwer", "qre", "qre", 4, 3, 4, Date.valueOf("2022-06-20") ));
    }
}