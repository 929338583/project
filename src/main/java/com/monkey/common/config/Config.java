package com.monkey.common.config;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.support.PropertiesLoaderUtils;

public class Config extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = LoggerFactory.getLogger(Config.class);

	private static Map<String, String> map;

	public void init() throws ServletException {

		Properties props;
		try {
			props = PropertiesLoaderUtils.loadAllProperties("config.properties");
			process(props);
		} catch (IOException e) {
			logger.error("com.yang.monkey.config.Config.init() error : " + e);
		}
	}

	public void process(Properties props) {

		map = new HashMap<String, String>();

		for (Object key : props.keySet()) {
			String keyStr = key.toString();
			String value = props.getProperty(keyStr);
			map.put(keyStr, value);
		}
	}

	public static String getProperty(String key) {
		return map.get(key);

	}
}
