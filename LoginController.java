/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pooja
 */
package com.candidjava;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginController extends HttpServlet {
	
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
                //String phone=request.getParameter("phone");
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/pe", "root", "1nt17cs121"); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select name,location,status,phone from user where name=? and email=? and password=?");
                    ps.setString(1, name);
              	ps.setString(2, email);
                ps.setString(3, password);
    
                
 
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
                        String name_s=rs.getString("name");
                        String location_s=rs.getString("location");
                        String status_s=rs.getString("status");
                        String phone_s=rs.getString("phone");
                         HttpSession session = request.getSession(true);
                         session.setAttribute("name", name_s);
                         session.setAttribute("location", location_s);
                         session.setAttribute("status", status_s);
                         session.setAttribute("phone", phone_s);
			response.sendRedirect("LoginSuccess.jsp");
			return;
		}
		response.sendRedirect("Loginerror.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
