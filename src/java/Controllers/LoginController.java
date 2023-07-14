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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ravi
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");

        PrintWriter out = response.getWriter();
        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_uni_project", "root", "");
            pst = con.prepareStatement("SELECT * FROM users WHERE email=? AND pwd=?");

            pst.setString(1, uname);
            pst.setString(2, pwd);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                String role = rs.getString("role");

                HttpSession session = request.getSession();
                session.setAttribute("UN", uname);
                //  response.sendRedirect("studentDashboard.jsp");

                if (role.equals("user")) {
                    response.sendRedirect("studentDashboard.jsp");
                    
                } else if (role.equals("teacher")) {
                    response.sendRedirect("teacherDashboard.jsp");
                } else if (role.equals("admin")) {
                    response.sendRedirect("admin.jsp");
                }

            } else {
                request.setAttribute("Message", "Login Failed please check your user name and password ");
                request.getRequestDispatcher("index.jsp").forward(request, response);

            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

}
