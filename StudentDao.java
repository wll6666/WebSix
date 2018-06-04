package com.demo.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * student���ݿ����
 * @author Li YongQiang
 *
 */

public class StudentDao {
	/**
	 * ��ȡ���ݿ�����
	 * @return Connection����
	 */
	public Connection getConnection(){
		// ���ݿ�����
		Connection conn = null;
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
			conn = DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �������ݿ�����
		return conn;
	}
	
	/**
	 * ��ҳ��ѯ����student��Ϣ
	 * @param page ҳ��
	 * @return List<Product>
	 */
	public List<student> find(int page){
		// ����List
		List<student> list = new ArrayList<student>();
		// ��ȡ���ݿ�����
		Connection conn = getConnection();
		// ��ҳ��ѯ��SQL���
		String sql = "select * from student order by id desc limit ?,?";
		try {
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�1��������ֵ
			ps.setInt(1, (page - 1) * student.PAGE_SIZE);
			// ��SQL����еĵ�2��������ֵ
			ps.setInt(2, student.PAGE_SIZE);
			// ִ�в�ѯ����
			ResultSet rs = ps.executeQuery();
			// �������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����Product
				student p = new student();
				// ��id���Ը�ֵ
				p.setId(rs.getString("id"));
				// ��name���Ը�ֵ
				p.setName(rs.getString("name"));
				// ��sex���Ը�ֵ
				p.setSex(rs.getString("sex"));
				// ��tel���Ը�ֵ
				p.setTel(rs.getString("tel"));
				// ��qq���Ը�ֵ
				p.setQq(rs.getString("qq"));
				// ��Id_card���Ը�ֵ
				p.setId_card(rs.getString("id_card"));
				// ��Product��ӵ�List������
				list.add(p);
			}
			// �ر�ResultSet
			rs.close();
			// �ر�PreparedStatement
			ps.close();
			// �ر�Connection
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * ��ѯ�ܼ�¼��
	 * @return �ܼ�¼��
	 */
	public int findCount(){
		// �ܼ�¼��
		int count = 0;
		// ��ȡ���ݿ�����
		Connection conn = getConnection();
		// ��ѯ�ܼ�¼��SQL���
		String sql = "select count(*) from student";
		try {
			// ����Statement
			Statement stmt = conn.createStatement();
			// ��ѯ����ȡResultSet
			ResultSet rs = stmt.executeQuery(sql);
			// �������ƶ������ж��Ƿ���Ч
			if(rs.next()){
				// ���ܼ�¼����ֵ
				count = rs.getInt(1);
			}
			// �ر�ResultSet
			rs.close();
			// �ر�Connection
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �����ܼ�¼��
		return count;
	}
}
