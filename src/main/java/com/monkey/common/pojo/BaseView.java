package com.monkey.common.pojo;

public abstract class BaseView {

	public static final Integer PAGE_SIZE = 15;
	public static final Integer INIT_PAGE = 1;
	
	private Integer pageNum;

	public BaseView() {
		pageNum = INIT_PAGE;
	}
	
	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
}
