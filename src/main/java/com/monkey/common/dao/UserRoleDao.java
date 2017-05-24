package com.monkey.common.dao;

import java.util.List;

import com.monkey.common.bean.UserRole;

public interface UserRoleDao {
	
    int delete(UserRole userRole);

    int insertBatch(List<UserRole> list);
    
    List<Integer> selectRids(Long uid);

}