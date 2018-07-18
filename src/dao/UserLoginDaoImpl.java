package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Users;
import util.JdbcUtil;


public class UserLoginDaoImpl implements UserLoginDao {

	@Override
	public Users doLogin(String username, String password) {
			Users u=null;
		   Connection conn =null;
		   PreparedStatement pstmt=null;
		   ResultSet rs=null;
		   try {
				try {
					conn =JdbcUtil.getConnection();
				} catch (Exception e) {
					e.printStackTrace();
				}
				  //静态sql语句
				String sql = "select * from user where name=? and password=?"; 
			    pstmt = (PreparedStatement) conn.prepareStatement(sql);
				pstmt.setString(1, username);
				pstmt.setString(2, password);  
				rs = pstmt.executeQuery();
				if(rs.next()){
					u=new Users();
					u.setUsername(rs.getString("username"));
					u.setPassword(rs.getString("password"));
					System.out.println("登录成功！");
				}else{
					System.out.println("用户名或者密码错误！");
				}  
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {	
			   if(conn != null) {
				   try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				   conn = null;
			   }
			   if(rs != null) {
				   try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				   rs = null;
			   }
			   if(pstmt != null) {
				   try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				   pstmt = null;
			   }
			}
		return u;
		}
}


