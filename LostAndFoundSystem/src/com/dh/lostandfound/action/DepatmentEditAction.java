package com.dh.lostandfound.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dh.lostandfound.utils.DB;

/**
 * Servlet implementation class DepatmentEditAction
 */
@WebServlet("/depatment_edit_action")
public class DepatmentEditAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DepatmentEditAction() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String departmentId=null, departmentName=null,departmentDescription=null;
			
			System.out.println(departmentId+""+departmentName);
			
			departmentId=request.getParameter("dep_Id");
			departmentName= request.getParameter("dep_Name");
			
			System.out.println(departmentId+""+departmentName);
			
			Connection con = DB.getConnection();
			String sql = "update department set department_name=? where department_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, departmentName);
			ps.setString(2, departmentId);
			ps.executeUpdate();
			
		} catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.println(" Wrong Record");
			e.printStackTrace();
			
		}
		PrintWriter out = response.getWriter();
		out.println("Updated Successfully!");
	}

}
