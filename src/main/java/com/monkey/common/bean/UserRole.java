package com.monkey.common.bean;

public class UserRole {
	
    /*用户标识*/
    private Long uid;
    /*角色标识*/
    private Integer rid;

    public UserRole(Long uid, Integer rid) {
        this.uid = uid;
        this.rid = rid;
    }

    public UserRole() {
        super();
    }

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }
}