package com.monkey.common.bean;

import java.io.Serializable;

import com.monkey.common.pojo.BaseView;

public class User extends BaseView implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String realname;
	private String username;
	private String password;
	private String salt;
	private String card;
	private String phone;
	private String email;
	private Integer status;
	private Long updateDate;
	private Long createDate;
	
	public User() {
		super();
	}
	
	public User(Long id, String realname, String username, String password, Long updateDate, Long createDate) {
		super();
		this.id = id;
		this.realname = realname;
		this.username = username;
		this.password = password;
		this.updateDate = updateDate;
		this.createDate = createDate;
	}
	public User(Long id, String realname, String username, String password, String salt, String card, String phone,
			String email, Integer status, Long updateDate, Long createDate) {
		super();
		this.id = id;
		this.realname = realname;
		this.username = username;
		this.password = password;
		this.salt = salt;
		this.card = card;
		this.phone = phone;
		this.email = email;
		this.status = status;
		this.updateDate = updateDate;
		this.createDate = createDate;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
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

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
