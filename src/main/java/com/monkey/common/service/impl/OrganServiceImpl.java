package com.monkey.common.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.monkey.common.bean.Organ;
import com.monkey.common.constant.Constant;
import com.monkey.common.dao.OrganDao;
import com.monkey.common.service.OrganService;

@Service("organService")
public class OrganServiceImpl implements OrganService {

	@Resource
	private OrganDao organDao;

	@Override
	public Organ get(Integer id) {
		return organDao.selectByPrimaryKey(id);
	}

	/*
	 * 查询全部Organ，并排序
	 */
	public List<Organ> selectAll() {
		return organDao.selectAll();
	}
	
	/*
	 * 查询全部Organ，并排序
	 */
	public List<Organ> selectTree() {
		
		List<Organ> organs = organDao.selectAll();
		List<Organ> result = new ArrayList<Organ>();
		
		for (Organ parent : organs) {
			
			if(parent.getPid() == Constant.DEFAULT_INT){
				
				result.add(parent);
				
				for(Organ organ:sort(parent, organs)){
					result.add(organ);
				}
				
			}
		}
		
		return result;
	}

	/**
	 * 对组织进行排序
	 * @param parent
	 * @param organs
	 * @return
	 */
	private List<Organ> sort(Organ parent, List<Organ> organs) {
		
		List<Organ> sort = new ArrayList<Organ>();
		
		for (Organ organ : organs) {
			
			if (organ.getPid() == parent.getId()) {
				
				sort.add(organ);
				
				if(hasChild(organ.getId(), organs)){
					
					for(Organ child: sort(organ, organs)){
						sort.add(child);
					}
				}
			}
		}
		
		return sort;
	}
	
	/**
	 * 是否存在子集
	 * 
	 * @param pid
	 * @param organs
	 * @return
	 */
	private boolean hasChild(Integer pid, List<Organ> organs) {
		boolean result = false;
		for (Organ organ : organs) {
			if (organ.getPid() == pid) {
				result = true;
				break;
			}
		}
		return result;
	}

	@Override
	public int insert(Organ organ) {
		return organDao.insert(organ);
	}

	@Override
	public int update(Organ organ) {
		return organDao.updateByPrimaryKeySelective(organ);
	}

	@Override
	public int delete(Integer id) {
		return organDao.deleteByPrimaryKey(id);
	}

}
