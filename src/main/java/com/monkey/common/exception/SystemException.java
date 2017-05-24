package com.monkey.common.exception;

/**
 * 自定义异常处理
 * @author monkey
 *
 */
public class SystemException extends Exception{

	private static final long serialVersionUID = 1L;

	/*
	 * 错误编码
	 */
	private Integer code;
	/*
	 * 错误信息
	 */
	private String msg;
	/*
	 * 请求地址
	 */
	private String url;
	
	public SystemException(){
		super();
	}
	
	public SystemException(String url){
		super();
		this.url = url;
	}
	
	public SystemException(Integer code){
		super();
		this.code = code;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
}
