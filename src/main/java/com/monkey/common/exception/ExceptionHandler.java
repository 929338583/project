package com.monkey.common.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * 统一异常处理类
 * 
 * @author monkey
 *
 */
public class ExceptionHandler implements HandlerExceptionResolver {

	private static final Logger logger = LoggerFactory.getLogger(ExceptionHandler.class);

	/*
	 * 异常处理
	 */
	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception exception) {

		String url = WebUtils.getPathWithinApplication(request);

		logger.error(formatMsg(exception, url));

		return msgHandler(exception, url);
	}

	/*
	 * 异常信息处理
	 */
	private String formatMsg(Exception exception, String url) {

		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		StringBuffer msg = new StringBuffer();

		exception.printStackTrace(pw);

		msg.append("发生错误请求地址：").append(url).append(" 错误堆栈信息：").append(sw.toString());
		return msg.toString();
	}

	/*
	 * 信息处理
	 */
	private ModelAndView msgHandler(Exception e, String url) {
		ModelAndView modelAndView = new ModelAndView("error");
		SystemException exception = new SystemException(url);

		if (e instanceof AccountException) {
			modelAndView.setViewName("login");
			exception.setMsg("帐号异常！");
		} else if (e instanceof UnknownAccountException) {
			modelAndView.setViewName("login");
			exception.setMsg("帐号密码不正确！");
		} else if (e instanceof IncorrectCredentialsException) {
			modelAndView.setViewName("login");
			exception.setMsg("帐号密码不正确！");
		} else if (e instanceof AuthenticationException) {
			modelAndView.setViewName("login");
			exception.setMsg("认证失败！");
		} else if (e instanceof LockedAccountException) {
			exception.setCode(ExceptionCode.ACNT_ERR);
			exception.setMsg("帐号被锁定！");
		}  else if (e instanceof UnauthorizedException) {
			modelAndView.setViewName("/refuse");
			exception.setMsg("对不起，您没有此权限！");
		} else {
			exception.setCode(ExceptionCode.SYS_ERR);
			exception.setMsg("系统出错了，请联系管理员！");
		}

		modelAndView.addObject("exception", exception);
		return modelAndView;
		
	}
}
