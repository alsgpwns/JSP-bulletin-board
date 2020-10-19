package com.hy.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginCheck")
public class loginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public loginCheck() {
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request,response);
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String userID=request.getParameter("userID");
		String userPW=request.getParameter("userPW");
		String url="jdbc:mysql://localhost:3306/boarderTest?serverTimezone=UTC";
		String id="root";
		String pw="1234";
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="select id from board where id='"+userID+"' and password='"+userPW+"'";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,id,pw);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("memberID", userID);
				System.out.println(session);
				response.sendRedirect("loginOk.jsp");
			}
			else {
				response.sendRedirect("loginError.jsp");
			}
		} catch(ClassNotFoundException e) {
			out.write("mysql driver load fail!");
			e.printStackTrace();
		} catch (SQLException e) {
			out.write("mysql connect fail !");
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch(Exception e) {
				
			}
		}
		
		
	}

}
