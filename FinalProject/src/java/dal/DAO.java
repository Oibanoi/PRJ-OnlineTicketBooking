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
                User a = new User(rs.getInt("role"), rs.getInt("userID"), rs.getString("password"), rs.getString("name"));
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

    public User getUserById(int id) {
        String sql = "select * FROM [dbo].[User] where UserID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User c = new User(rs.getInt("role"), rs.getString("password"), rs.getString("name"), rs.getString("email"), rs.getString("address"), rs.getString("phonenumber"), rs.getInt("userID"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Movie getMovieById(String id) {
        String sql = "select * FROM [dbo].[Movie] where FilmID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Movie c = new Movie(rs.getString("FilmID"), rs.getString("Information"), rs.getString("status"),
                        rs.getString("image"), rs.getInt("HotLevel"), rs.getFloat("Price"), rs.getFloat("Duration"), rs.getDate("Publish_date"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Movie> getAllMovie() {
        List<Movie> list = new ArrayList<>();
        String sql = "select * from Movie";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Movie d = new Movie(rs.getString("FilmID"), rs.getString("Information"), rs.getString("status"), rs.getString("image"),
                        rs.getInt("HotLevel"), rs.getFloat("Price"), rs.getFloat("Duration"), rs.getDate("Publish_date"));
                list.add(d);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void update(User c) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [name] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[phonenumber] = ?\n"
                + " WHERE UserID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getEmail());
            st.setString(3, c.getAddress());
            st.setString(4, c.getPhonenumber());
            st.setInt(5, c.getUserID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(int id, String pass) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [password] = ?\n"
                + " WHERE UserID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getUserIDByUserAndPass(String user, String pass) {
        String sql = "select * FROM [dbo].[User] where name=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt("userID");

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }
    public List<Movie> search(String name)
    {
        List<Movie> list=new ArrayList<>();
        String sql="select * FROM [dbo].[Movie] where 1=1 ";
        if (name!=null && !name.equals(""))
            sql+=" and FilmID like '%"+name+"%' or Information like '%"+name+"%'";
        
        try{
             PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while (rs.next())
            {
                Movie p=new Movie();
                p.setDuration(rs.getFloat("Duration"));
                p.setFilmID(rs.getString("FilmID"));
                p.setHotLevel(rs.getInt("HotLevel"));
                p.setImage(rs.getString("image"));
                p.setInformation(rs.getString("Information"));
                p.setPrice(rs.getFloat("Price"));
                p.setPublish_date(rs.getDate("Publish_date"));
                p.setStatus(rs.getString("status"));
                list.add(p);
            }
        }catch(SQLException e){
            
        }
        return list;
    }
    public static void main(String[] args) {
        DAO d = new DAO();
       List<Movie> list=d.search("a");
        for (Movie i:list)
           System.out.println(i.toString());
    }
}
