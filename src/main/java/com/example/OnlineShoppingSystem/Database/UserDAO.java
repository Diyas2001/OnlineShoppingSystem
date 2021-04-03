package com.example.OnlineShoppingSystem.Database;

import com.example.OnlineShoppingSystem.Entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public static int save(Users bean) {
        int status = 0;
        try {
            Connection con = DBConnection.getCon();
            PreparedStatement ps = con.prepareStatement("insert into users(id, name, email, password, role) values(?,?,?,?,?)");
            ps.setInt(1, bean.getId());
            ps.setString(2, bean.getName());
            ps.setString(3, bean.getEmail());
            ps.setString(4, bean.getPassword());
            ps.setString(5, bean.getRole());
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static int delete(int id) {
        int status = 0;
        try {
            Connection con = DBConnection.getCon();
            PreparedStatement ps = con.prepareStatement("delete from users where id=?");
            ps.setInt(1, id);
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Users> view() {
        List<Users> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getCon();
            PreparedStatement ps = con.prepareStatement("select * from users");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Users bean = new Users();
                bean.setId(rs.getInt(1));
                bean.setName(rs.getString(2));
                bean.setPassword(rs.getString(3));
                bean.setEmail(rs.getString(4));
                bean.setRole(rs.getString(5));
                list.add(bean);
            }
            con.close();

        }
        catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }


    public Users authenticate(String email, String password, String role) {
        Users user = null;
        try {
            Connection con = DBConnection.getCon();
            PreparedStatement ps = con.prepareStatement("select * from users where email=? and password=? and role=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3, role);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Users u = new Users();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPassword(rs.getString(4));
                u.setRole(rs.getString(5));
                user = u;
            }
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        return user;
    }

    public static Users viewById(int id) {
        Users bean = new Users();
        try {
            Connection con = DBConnection.getCon();
            PreparedStatement ps = con.prepareStatement("select * from users where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                bean.setId(rs.getInt(1));
                bean.setName(rs.getString(2));
                bean.setPassword(rs.getString(3));
                bean.setEmail(rs.getString(4));
                bean.setRole(rs.getString(5));
            }
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return bean;
    }
}

