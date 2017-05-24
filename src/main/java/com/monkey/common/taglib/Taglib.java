package com.monkey.common.taglib;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 自定义日期转换标签，供页面使用
 * 在WEB-INF下taglib中datatag.tld中引用
 * @author monkey
 *
 */
public class Taglib extends TagSupport {
	
	private static final long serialVersionUID = 1L;

	private static final Logger logger = LoggerFactory.getLogger(Taglib.class);

	private String value;

	@Override
	public int doStartTag() throws JspException {

		long time = Long.valueOf(value);

		Calendar calendar = Calendar.getInstance();

		calendar.setTimeInMillis(time);

		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String data = dateformat.format(calendar.getTime());

		try {

			pageContext.getOut().write(data);

		} catch (IOException e) {

			logger.error("TagUtil doStartTag()" + e);

		}

		return super.doStartTag();
	}

	public void setValue(String value) {
		this.value = value;
	}
}
