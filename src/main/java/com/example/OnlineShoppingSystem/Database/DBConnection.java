package com.example.OnlineShoppingSystem.Database;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getCon() {
        Connection con = null;
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/onlineshopping",
                    "postgres", "1111");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
