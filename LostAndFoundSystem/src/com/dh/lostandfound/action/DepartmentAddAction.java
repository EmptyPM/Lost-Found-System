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

import org.apache.catalina.connector.Response;

import com.dh.lostandfound.utils.DB;
/**
 * Servlet implementation class DepartmentAddAction
 */
@WebServlet("/department_add_action")
public class DepartmentAddAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DepartmentAddAction() {
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
		String depId = request.getParameter("depId");
		String depName = request.getParameter("depName");
		String description = request.getParameter("description");
		
		System.out.println(depId+""+depName +"" + description);
		
		try {
			Connection con = DB.getConnection();
			String sql = "insert into department (department_id,department_name,delete_status) values(?,?,1)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, depId);
			ps.setString(2, depName);
			//ps.setString(2, description);
			response.sendRedirect("Department/Department.jsp");
			ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		out.println("Saved!");
	}

}
