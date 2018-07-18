package dao;

import entity.Users;

public interface UserLoginDao {
	
	public Users doLogin(String username, String password);
		
}
