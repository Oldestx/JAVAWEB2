package com.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnect {

	private String DiverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String Url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Blog";
	private String User = "sa";
	private String Pwd = "123456";

	public Connection conn = null;

	public Connection getConnection() throws SQLException {

		try {
			Class.forName(DiverName);

			conn = DriverManager.getConnection(Url, User, Pwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	//数据库关闭
	public static void close(Connection conn,PreparedStatement pstmt,ResultSet rs) {
		
		try {
			if(rs!=null);
				rs.close();
			if(pstmt!=null);
				pstmt.close();
			if(conn!=null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
