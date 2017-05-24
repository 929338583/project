package com.monkey.common.dao;

import java.util.List;

import com.monkey.common.bean.Role;

public interface RoleDao {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    List<Role> selectRoles(Role role);
    
    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}