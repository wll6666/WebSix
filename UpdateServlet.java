//
//1�õ��޸�����   
//2д�����ݿ�
//3�ض���FindServlet0

package com.demo.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int id = Integer.valueOf(request.getParameter("id"));
		int tel = Integer.valueOf(request.getParameter("tel")); 
			try {
				// �������ݿ�������ע�ᵽ����������
				Class.forName("com.mysql.jdbc.Driver");
				// ���ݿ������ַ���
				String url = "jdbc:mysql://localhost:3306/mysql1";
				// ���ݿ��û���
				String username = "root";
				// ���ݿ�����
				String password = "123";
				// ����Connection����
				Connection conn = DriverManager.getConnection(url,username,password);
				// ����SQL���
				String sql = "update student set tel=? where id=?";
				// ��ȡPreparedStatement
				PreparedStatement ps = conn.prepareStatement(sql);
				// ��SQL����еĵ�һ��������ֵ
				ps.setInt(1, tel);
				// ��SQL����еĵڶ���������ֵ
				ps.setInt(2, id);
				// ִ�и��²���
				ps.executeUpdate();
				// �ر�PreparedStatement
				ps.close();
				// �ر�Connection
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			// �ض���FindServletoo
			response.sendRedirect("FindServlet0");
		}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
