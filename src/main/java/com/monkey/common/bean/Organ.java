package com.monkey.common.bean;

import java.util.List;

import com.monkey.common.pojo.BaseView;

public class Organ extends BaseView{
	
    private Integer id;

    private String name;

    private Integer pid;

    private Integer sort;

    private String remark;
    
    private String pname;

    private Long createDate;

    private Long updateDate;
    
    private List<Role> roles;
    
    public Organ() {}
    

	public Organ(Integer id, String name, Integer pid, Integer sort, String remark, Long createDate, Long updateDate) {
		super();
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.sort = sort;
		this.remark = remark;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}



	public Organ(Integer id, String name, Integer pid, Integer sort, String remark, String pname, Long createDate,
			Long updateDate) {
		super();
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.sort = sort;
		this.remark = remark;
		this.pname = pname;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Long getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Long createDate) {
		this.createDate = createDate;
	}

	public Long getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Long updateDate) {
		this.updateDate = updateDate;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public List<Role> getRoles() {
		return roles;
	}


	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
    

}