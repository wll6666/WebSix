


// ����student_list.jsp ����ʾ�޸Ľ��
 


		package com.demo.servlet;

		import java.io.IOException;
		import java.sql.Connection;
		import java.sql.DriverManager;
		import java.sql.ResultSet;
		import java.sql.SQLException;
		import java.sql.Statement;
		import java.util.ArrayList;
		import java.util.List;

		import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
		import javax.servlet.http.HttpServletRequest;
		import javax.servlet.http.HttpServletResponse;

        import com.demo.bean.student;
@WebServlet("/FindServlet0")
		public class FindServlet0 extends HttpServlet {
			private static final long serialVersionUID = 1L;

			protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
					// ��ȡStatement
					Statement stmt = conn.createStatement();
					// ���student��Ϣ��SQL���
					String sql = "select * from student";
					// ִ�в�ѯ
					ResultSet rs = stmt.executeQuery(sql);
					// ʵ����List����
					List<student> list = new ArrayList<student>();
					// �жϹ������ƶ������ж��Ƿ���Ч
					while(rs.next()){
						// ʵ����student����
						student student = new student();
						// ��id���Ը�ֵ
						student.setId(rs.getString("id"));
						// ��name���Ը�ֵ
						student.setName(rs.getString("name"));
						// ��sex���Ը�ֵ
						student.setSex(rs.getString("sex"));
						// ��tel���Ը�ֵ
						student.setTel(rs.getString("tel"));
						// ��qq���Ը�ֵ
						student.setQq(rs.getString("qq"));
						// ��id_card���Ը�ֵ
						student.setId_card(rs.getString("id_card"));
						// ��ͼ�������ӵ�������
						list.add(student);
					}
					// ����Ա���Ϸ��õ�request֮��
					request.setAttribute("list", list);
					rs.close();		// �ر�ResultSet
					stmt.close();	// �ر�Statement
					conn.close();	// �ر�Connection
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				// ����ת����student_list.jsp
				request.getRequestDispatcher("student_list.jsp").forward(request, response);
			}
		

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
