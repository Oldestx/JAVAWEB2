package com.myDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DBConnect.DBConnect;
import com.myBean.UserBean;

public class UserDaoImp implements UserDao {

	// 初始化数据库的操作对象
	Connection conn = null;
	PreparedStatement pstmt = null;
	int rs = 0;
	UserBean result = null;

	// 创建DBConnect对象
	DBConnect db = new DBConnect();

	@Override
	public boolean add(UserBean ub) {

		try {
			conn = db.getConnection();

			String sql = "insert into [T_User] (email,name,password) values(?,?,?) ";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, ub.getEmail());
			pstmt.setString(2, ub.getName());
			pstmt.setString(3, ub.getPassword());

			rs = pstmt.executeUpdate();

			System.out.println(rs);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public UserBean login(String name, String password) {

		try {
			conn = db.getConnection();

			String sql = "select * from [T_User] where name=? and password=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, name);
			pstmt.setString(2, password);

			ResultSet rs = pstmt.executeQuery();
			System.out.println(rs);

			if (rs.next()) {
				result = new UserBean();
				result.setName(rs.getString(name));
				result.setPassword(rs.getString(password));
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

	public boolean addBack(UserBean ub3) {

		try {
			// 获取数据库连接
			conn = db.getConnection();

			// 预编译sql
			String sql = "insert into T_Back (name,telphone,content) values(?,?,?) ";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, ub3.getName());
			pstmt.setString(2, ub3.getTelphone());
			pstmt.setString(3, ub3.getContent());

			rs = pstmt.executeUpdate();
			System.out.println(rs);
			return true;

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

}
