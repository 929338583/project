package com.monkey.common.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.monkey.common.bean.RolePermission;
import com.monkey.common.dao.RolePermissionDao;
import com.monkey.common.service.RolePermissionService;

@Service("rolePermissionService")
public class RolePermissionServiceImpl implements RolePermissionService{

	@Resource
	private RolePermissionDao rolePermissionDao;
	
	@Override
	public int delete(RolePermission rolePermission) {
		return rolePermissionDao.delete(rolePermission);
	}

	@Override
	public int insert(RolePermission rolePermission) {
		return rolePermissionDao.insert(rolePermission);
	}

}
