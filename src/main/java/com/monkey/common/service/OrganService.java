package com.monkey.common.service;

import java.util.List;

import com.monkey.common.bean.Organ;

public interface OrganService {

	public Organ get(Integer id);
	
	public List<Organ> selectAll();
	
	public int insert(Organ organ);
	
	public int update(Organ organ);
	
	public int delete(Integer id);
}
