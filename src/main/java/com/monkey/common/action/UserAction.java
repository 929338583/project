package com.monkey.common.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.monkey.common.bean.Organ;
import com.monkey.common.bean.User;
import com.monkey.common.constant.Constant;
import com.monkey.common.pojo.BaseView;
import com.monkey.common.service.RoleService;
import com.monkey.common.service.UserService;

/**
 * 用户管理
 * 
 * @author monkey
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction {

	@Resource
	private UserService userService;
	
	@Resource
	private RoleService roleService;

	@RequestMapping("/users")
	@RequiresPermissions("user:query")
	public String query(User user, Model model) {

		Page<User> page = PageHelper.startPage(user.getPageNum(), BaseView.PAGE_SIZE);
		List<User> list = userService.select(user);
		PageInfo<User> info = new PageInfo<User>(page);
		model.addAttribute(Constant.PAGE_KEY, info);
		model.addAttribute("list", list);
		return "user/users/page";
	}

	@RequestMapping("/detail")
	@RequiresPermissions("user:query")
	public String detail(HttpServletRequest request, Model model) {
		Long userId = Long.parseLong(request.getParameter("id"));
		User user = userService.get(userId);
		model.addAttribute("user", user);
		return "detail";
	}

	@RequestMapping("/toAdd")
	@RequiresPermissions("user:add")
	public String toAdd(Model model) {
		List<Organ> organs = roleService.selectOrganRole();
		model.addAttribute("organs", organs);
		return "user/addUser";
	}

	@RequestMapping("/add")
	@RequiresPermissions("user:add")
	public String add(User user,Integer[] ids, Model model) {
		userService.insert(user,ids);
		return "redirect:/user/users";
	}

	@RequestMapping("/toEdit/{id}")
	@RequiresPermissions("user:edit")
	public String toEdit(Model model, @PathVariable long id) {
		model.addAttribute(userService.get(id));
		return "user/editUser";
	}

	@RequestMapping("/edit")
	@RequiresPermissions("user:edit")
	public String edit(HttpServletRequest request, User user) {
		userService.update(user);
		return "redirect:/user/users";
	}

}
