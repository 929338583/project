package com.monkey.common.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.monkey.common.bean.Organ;
import com.monkey.common.bean.Role;
import com.monkey.common.dao.OrganDao;
import com.monkey.common.dao.RoleDao;
import com.monkey.common.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

	@Resource
	private RoleDao roleDao;
	
	@Resource
	private OrganDao organDao;
	
	@Override
	public List<Role> select(Role role) {
		return roleDao.selectRoles(role);
	}

	@Override
	public int insert(Role role) {
		return roleDao.insert(role);
	}

	@Override
	public int update(Role role) {
		return roleDao.updateByPrimaryKey(role);
	}

	@Override
	public int delete(Integer id) {
		return roleDao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Organ> selectOrganRole() {
		List<Role> roles = roleDao.selectRoles(new Role());
		List<Organ> organs = organDao.selectAll();
		List<Organ> result = new ArrayList<Organ>();
		List<Role> child = null;
		
		for (Organ organ : organs) {
			child = new ArrayList<Role>();
			for (Role role : roles) {
				if(role.getOrgId() == organ.getId()){
					child.add(role);
				}
			}
			organ.setRoles(child);
			result.add(organ);
		}
		
		return result;
	}

}
