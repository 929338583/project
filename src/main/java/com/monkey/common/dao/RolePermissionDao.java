package com.monkey.common.dao;

import com.monkey.common.bean.RolePermission;

public interface RolePermissionDao {
	
    int delete(RolePermission record);
    
    int insert(RolePermission record);

}