package com.monkey.common.service;

import java.util.List;

import com.monkey.common.bean.Permission;
import com.monkey.common.bean.RolePermission;

public interface PermissionService {
	
    List<Permission> select(Integer rid);
    
    int delete(RolePermission rolePermission);
    
    int insert(RolePermission rolePermission);

}