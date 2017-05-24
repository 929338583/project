package com.monkey.common.dao;

import java.util.List;

import com.monkey.common.bean.Organ;

public interface OrganDao {
	
	Organ selectByPrimaryKey(Integer id);
	
	List<Organ> selectAll();
	
    int deleteByPrimaryKey(Integer id);

    int insert(Organ record);

    int insertSelective(Organ record);

    int updateByPrimaryKeySelective(Organ record);

    int updateByPrimaryKey(Organ record);
}