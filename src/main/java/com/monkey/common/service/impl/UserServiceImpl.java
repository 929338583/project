package com.monkey.common.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.monkey.common.bean.User;
import com.monkey.common.bean.UserRole;
import com.monkey.common.constant.Constant;
import com.monkey.common.dao.UserDao;
import com.monkey.common.dao.UserRoleDao;
import com.monkey.common.factory.SystemFactory;
import com.monkey.common.security.SecurityRealm;
import com.monkey.common.service.UserService;
import com.monkey.common.util.CommonUtil;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	
	@Resource
	private UserRoleDao userRoleDao;

	@Override
	@Transactional(readOnly = true)
	public User get(Long id) {
		return userDao.getUserById(id);
	}

	@Override
	public int delete(Long id) {
		return userDao.deleteUser(id);		
	}

	@Override
	public int update(User user) {
		return userDao.updateUser(user);		
	}

	@Override
	@Transactional(readOnly = true)
	public List<User> select(User user) {
		return userDao.selectUsers(user);
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public int insert(User user,Integer[] ids) {
		Long id = SystemFactory.getInstance().nextId();
		Long now = CommonUtil.currentTime();
		String salt = SystemFactory.random();
		String password = user.getPassword();
		List<UserRole> list = new ArrayList<UserRole>();
		UserRole userRole =null;
		
		for (Integer rid : ids) {
			userRole = new UserRole();
			userRole.setUid(id);
			userRole.setRid(rid);
			list.add(userRole);
		}
		
		user.setId(id);
		user.setPassword(SecurityRealm.getInstance().encript(password, salt));;
		user.setSalt(salt);
		user.setCreateDate(now);
		user.setUpdateDate(now);
		userDao.insertUser(user);
		userRoleDao.insertBatch(list);
		return Constant.DEFINE_TRUE;
	}

}
