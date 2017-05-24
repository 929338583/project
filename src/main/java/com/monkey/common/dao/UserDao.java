package com.monkey.common.dao;

import java.util.List;

import com.monkey.common.bean.User;

public interface UserDao {

	public User getUserById(Long id); 
	
	public User getUser(String username);
	
	public List<User> selectUsers(User user);
	
    public int insertUser(User user);    
        
    public int deleteUser(Long id);    
        
    public int updateUser(User user);
    
}
