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
import java.sql.SQLException;
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
@WebServlet(name = "Studentcontroller1", urlPatterns = {"/Studentcontroller1"})
public class Studentcontroller1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String role = request.getParameter("role");
        
        PrintWriter out = response.getWriter();
        Connection con = null;
        PreparedStatement pst = null;

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_uni_project", "root", "");

            pst = con.prepareStatement("INSERT INTO users(name,email,pwd,role) VALUES (?, ?, ?,?)");
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, pwd);
            pst.setString(4, role);
            

            int rowsAffected = pst.executeUpdate();
            if (rowsAffected > 0) {
                out.println("<h1>User data inserted successfully!</h1>");
            } else {
                out.println("<h1>Failed to insert user data.</h1>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Studentcontroller1.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something went wrong.</h1>");
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(Studentcontroller1.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

    
