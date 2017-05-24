package com.monkey.common.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 首页
 * @author monkey
 *
 */
@Controller
@RequestMapping("/main")
public class IndexAction {

	@RequestMapping("/index")
	public String index(Model model){
		model.addAttribute("index", true);
		return "main/index";
	}
}
