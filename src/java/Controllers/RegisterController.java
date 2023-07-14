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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ravi
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

   // Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        String fname =request.getParameter("fname");
        String email=request.getParameter("email");
        String pwd=request.getParameter("pwd");
        
        PrintWriter out =response.getWriter();
        Connection con;
        try{
        con=DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_uni_project", "root","");
        pst=con.prepareStatement("INSERT INTO users(name,email,pwd,role) VALUES(?,?,?,?) ");
        
        pst.setString(1,fname);
        pst.setString(2, email);
        pst.setString(3,pwd);
        pst.setString(4,"user");
        pst.executeUpdate();
        
        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
       out.println("<h1>something went wrong</h1>");
       
        }
         request.setAttribute("Message", "Hello " + fname + " your registration is successful. Now"
                + " you can login to the system");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
}
