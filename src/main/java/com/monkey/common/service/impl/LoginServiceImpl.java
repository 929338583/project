package com.monkey.common.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.monkey.common.bean.User;
import com.monkey.common.dao.LoginDao;
import com.monkey.common.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Resource
	private LoginDao loginDao;
	
	public User login(String username) {
		return loginDao.login(username);
	}

}
