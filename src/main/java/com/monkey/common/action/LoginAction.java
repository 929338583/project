package com.monkey.common.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monkey.common.service.LoginService;

/**
 * µÇÂ¼
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/backstage")
public class LoginAction {

	@Resource
	private LoginService loginService;

	@RequestMapping("/login")
	public String login(HttpServletRequest request, String username, String password) throws Exception{

		Subject currentUser = SecurityUtils.getSubject();
		
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		
		if (!currentUser.isAuthenticated()){
			
            token.setRememberMe(true);  
            
            currentUser.login(token);  
            
        }
		
		return "index";

	}

}
