package com.monkey.common.bean;

public class RolePermission {
	
    /*角色标识*/
    private Integer rid;
    /*资源标识*/
    private Integer pid;
    
    public RolePermission(){}
    
	public RolePermission(Integer rid, Integer pid) {
		super();
		this.rid = rid;
		this.pid = pid;
	}
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}

}