/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rhdsa
 */
@WebServlet(name = "viewUsers", urlPatterns = {"/viewUsers"})
public class viewUsers extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        Connection con;
        
        List<users> userList = new ArrayList<>();
        
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_uni_project", "root", "");
            pst = con.prepareStatement("SELECT name,email,role,id FROM users");

            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                users newuser = new users();
        
        newuser.setName(rs.getString("name"));
        newuser.setEmail(rs.getString("email"));
        newuser.setRole(rs.getString("role"));
        newuser.setId(rs.getInt("id"));
        
        
        
        userList.add(newuser);
            }
            
            request.setAttribute("userList", userList);
            request.getRequestDispatcher("viewUsers.jsp").forward(request, response);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(viewUsers.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
       
    }


}
