package com.monkey.common.service;

import java.util.List;

import com.monkey.common.bean.Organ;
import com.monkey.common.bean.Role;

public interface RoleService {

	public List<Role> select(Role role);
	
	public List<Organ> selectOrganRole();
	
	public int insert(Role role);
	
	public int update(Role role);
	
	public int delete(Integer id);
	
}
