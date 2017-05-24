package com.monkey.common.util;

import java.util.Date;

/**
 * ͨ工具类
 * @author monkey
 *
 */
public class CommonUtil {

	/**
	 * 获取当前时间毫秒数
	 * @return
	 */
	public static Long currentTime() {
		return new Date().getTime();
	}
	
	/**
	 * 判断Integer类型数据是否为空
	 * @return
	 */
	public static boolean isEmpty(Integer value){
		if(value==0 || value==null){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 判断Integer类型是否不为空
	 * @return
	 */
	public static boolean isNotEmpty(Integer value){
		if(value!=0 || value!=null){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 判断对象类型是否为空串或null
	 * @return
	 */
	public static boolean isNull(Object value){
		if(value!=null || "".equals(value)){
			return true;
		}else{
			return false;
		}
	}
	
}
