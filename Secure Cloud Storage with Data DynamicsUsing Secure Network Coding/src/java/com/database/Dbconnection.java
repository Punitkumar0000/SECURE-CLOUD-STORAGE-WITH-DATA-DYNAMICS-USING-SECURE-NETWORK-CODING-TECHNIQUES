package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Dbconnection{
    
    public static Connection getcon(){
        
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/net_coding", "root", "");
     
        }
        catch(Exception e){
            e.printStackTrace();
        }
            
        return con;
    }
    
    
}
