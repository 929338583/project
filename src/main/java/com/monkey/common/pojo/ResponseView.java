package com.monkey.common.pojo;

import java.io.Serializable;

public class ResponseView implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int code;
	
	private String msg;
	
	private Object data;

	public ResponseView() {}
	
	public ResponseView(int code) {
		super();
		this.code = code;
	}
	
	public ResponseView(int code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}
	
	public ResponseView(int code, String msg, Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

}
