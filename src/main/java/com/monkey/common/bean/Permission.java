package com.monkey.common.bean;

public class Permission {
	
    private Integer id;

    private String name;

    private Integer type;

    private String permission;

    private String url;

    private Integer sort;

    private Integer pid;
    
    private Integer section;
    
    private String remark;
    
    private Integer ischeck;
    

    @Override
    public boolean equals(Object obj) {
    	
    	if(obj instanceof Permission){
    		if(((Permission) obj).getId().equals(this.id)){
    			return true;
    		}
    	}
    	
    	return super.equals(obj);
    }
    
    public Permission(Integer id, String name, Integer type, String permission, String url, Integer sort, Integer pid,
			Integer section, String remark, Integer ischeck) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.permission = permission;
		this.url = url;
		this.sort = sort;
		this.pid = pid;
		this.section = section;
		this.remark = remark;
		this.ischeck = ischeck;
	}

	public Permission(Integer id, String name, Integer type, String permission, String url, Integer sort, Integer pid,
			Integer section, String remark) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.permission = permission;
		this.url = url;
		this.sort = sort;
		this.pid = pid;
		this.section = section;
		this.remark = remark;
	}

	public Permission() {
        super();
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

	public Integer getSection() {
		return section;
	}

	public void setSection(Integer section) {
		this.section = section;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getIscheck() {
		return ischeck;
	}

	public void setIscheck(Integer ischeck) {
		this.ischeck = ischeck;
	}


}