package com.monkey.common.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.monkey.common.bean.Permission;
import com.monkey.common.bean.RolePermission;
import com.monkey.common.dao.PermissionDao;
import com.monkey.common.dao.RolePermissionDao;
import com.monkey.common.service.PermissionService;

@Service("permissionService")
public class PermissionServiceImpl implements PermissionService {

	@Resource
	private PermissionDao permissionDao;
	
	@Resource
	private RolePermissionDao roleRermissionDao;
	
	public List<Permission> select(Integer rid){
		return permissionDao.select(rid);
	}

	@Override
	public int delete(RolePermission rolePermission) {
		return roleRermissionDao.delete(rolePermission);
	}

	@Override
	public int insert(RolePermission rolePermission) {
		return roleRermissionDao.insert(rolePermission);
	}
	
}
