/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ravi
 */
public class DatabaseConnection {
    public static Connection connectToDatabase(String url, String username, String password )
            throws SQLException {
    Connection connection = null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(url,username,password);
        
    }catch(ClassNotFoundException e){
        System.out.println("could not find MYSQL JDBC driver");
        e.printStackTrace();
    }catch(SQLException e){
    System.out.println("Could not connect to database");
    e.printStackTrace();
    } 
    return connection ;

    }
}
