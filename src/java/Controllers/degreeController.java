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
@WebServlet(name = "degreeController", urlPatterns = {"/degreeController"})
public class degreeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String d_name = request.getParameter("d_name");
        String d_fullname = request.getParameter("d_fullname");

        PrintWriter out = response.getWriter();
        Connection con = null;
        PreparedStatement pst = null;

        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_uni_project", "root", "");

            pst = con.prepareStatement("INSERT INTO degrees(d_name, d_fullname) VALUES (?, ?)");
            pst.setString(1, d_name);
            pst.setString(2, d_fullname);

            int rowsAffected = pst.executeUpdate();
            if (rowsAffected > 0) {
                out.println("<h1>Student data inserted successfully!</h1>");
            } else {
                out.println("<h1>Failed to insert student data.</h1>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(marksController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something went wrong.</h1>");
            // out.println(ex);
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(degreeController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
