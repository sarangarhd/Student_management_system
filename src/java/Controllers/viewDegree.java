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
@WebServlet(name = "viewDegree", urlPatterns = {"/viewDegree"})
public class viewDegree extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        Connection con;
        
        List<degrees> degreeList = new ArrayList<>();
        
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_uni_project", "root", "");
            pst = con.prepareStatement("SELECT * FROM degrees");

            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                degrees newdegree = new degrees();
        
        newdegree.setD_id(rs.getInt("d_id"));
        newdegree.setD_name(rs.getString("d_name"));
        newdegree.setD_fullname(rs.getString("d_fullname"));
        
        degreeList.add(newdegree);
            }
            
            request.setAttribute("degreeList", degreeList);
            request.getRequestDispatcher("viewDegrees.jsp").forward(request, response);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(viewmarks.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
       
    }


}
