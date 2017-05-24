package com.monkey.common.service;

import java.util.List;

import com.monkey.common.bean.User;

public interface UserService {

	public User get(Long id);

	public List<User> select(User user);

	public int insert(User user,Integer[] ids);

	public int delete(Long id);

	public int update(User user);

}
