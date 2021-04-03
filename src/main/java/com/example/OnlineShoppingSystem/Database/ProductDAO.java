package com.example.OnlineShoppingSystem.Database;

import com.example.OnlineShoppingSystem.Entity.Products;
import com.example.OnlineShoppingSystem.Entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    public static int save(Products bean){
        int status=0;
        try{
            Connection con= DBConnection.getCon();
            PreparedStatement ps=con.prepareStatement("insert into products(id, name, price, quantity) values(?,?,?,?)");
            ps.setInt(1,bean.getId());
            ps.setString(2,bean.getName());
            ps.setInt(3,bean.getPrice());
            ps.setInt(4,bean.getQuantity());
            status=ps.executeUpdate();
            con.close();

        }catch(Exception e){System.out.println(e);}

        return status;
    }
    public static int delete(int id){
        int status=0;
        try{
            Connection con= DBConnection.getCon();
            PreparedStatement ps=con.prepareStatement("delete from products where id=?");
            ps.setInt(1,id);
            status=ps.executeUpdate();
            con.close();

        }catch(Exception e){System.out.println(e);}

        return status;
    }
    public static List<Products> view(){
        List<Products> list = new ArrayList<>();
        try{
            Connection con= DBConnection.getCon();
            PreparedStatement ps=con.prepareStatement("select * from products");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Products bean=new Products();
                bean.setId(rs.getInt(1));
                bean.setName(rs.getString(2));
                bean.setPrice(rs.getInt(3));
                bean.setQuantity(rs.getInt(4));
                list.add(bean);
            }
            con.close();

        }catch(Exception e){System.out.println(e);}

        return list;
    }
}
