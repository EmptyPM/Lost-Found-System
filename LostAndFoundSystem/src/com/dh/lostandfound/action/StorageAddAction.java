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
 * Servlet implementation class StorageAddAction
 */
@WebServlet("/storage_add_action")
public class StorageAddAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StorageAddAction() {
        super();
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
			
			String storageID=null,storage=null,description=null,sql=null;
			
			storageID= request.getParameter("storage_id");
			storage =request.getParameter("storage_name");
			description =request.getParameter("Description");
			
			Connection con = DB.getConnection();
			sql = "insert into storage (storage_id,storage,description,delete_status) values(?,?,?,1) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, storageID);
			ps.setString(2, storage);
			ps.setString(3, description);
			response.sendRedirect("Storage/StorageLocation.jsp");
			int a = ps.executeUpdate();
			
			System.out.println(a);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		out.println("Saved!");
		
	}

}
