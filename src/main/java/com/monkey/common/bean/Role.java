package com.monkey.common.bean;

import com.monkey.common.pojo.BaseView;

public class Role extends BaseView{
	
    private Integer id;

    private Integer orgId;
    
    private String orgName;

    private String name;

    private Integer status;

    private String remark;

    private Long createDate;

    private Long updateDate;

    public Role( Integer orgId, String name, Integer status, String remark) {
		super();
		this.orgId = orgId;
		this.name = name;
		this.status = status;
		this.remark = remark;
	}
    
    public Role(Integer id, Integer orgId, String orgName, String name, Integer status, String remark, Long createDate,
			Long updateDate) {
		super();
		this.id = id;
		this.orgId = orgId;
		this.orgName = orgName;
		this.name = name;
		this.status = status;
		this.remark = remark;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public Role(Integer id, Integer orgId, String name, Integer status, String remark, Long createDate, Long updateDate) {
        this.id = id;
        this.orgId = orgId;
        this.name = name;
        this.status = status;
        this.remark = remark;
        this.createDate = createDate;
        this.updateDate = updateDate;
    }

    public Role() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrgId() {
        return orgId;
    }

    public void setOrgId(Integer orgId) {
        this.orgId = orgId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
}