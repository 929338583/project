package com.monkey.common.dao;

import java.util.List;

import com.monkey.common.bean.Permission;

public interface PermissionDao {
	
    List<Permission> select(Integer rid);
    
    List<Permission> selectPermission(Integer rid);

}