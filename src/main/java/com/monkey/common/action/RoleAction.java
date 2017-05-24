package com.monkey.common.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.monkey.common.bean.Organ;
import com.monkey.common.bean.Role;
import com.monkey.common.constant.Constant;
import com.monkey.common.pojo.BaseView;
import com.monkey.common.service.OrganService;
import com.monkey.common.service.RoleService;
import com.monkey.common.util.CommonUtil;

@Controller
@RequestMapping("/role")
public class RoleAction {

	@Resource
	private RoleService roleService;
	@Resource
	private OrganService organService;
	
	@RequestMapping("/roles")
	@RequiresPermissions("role:query")
	public String query(Role role,Model model){
		Page<Role> page = PageHelper.startPage(role.getPageNum(), BaseView.PAGE_SIZE);
		List<Role> list = roleService.select(role);
		PageInfo<Role> info = new PageInfo<Role>(page);
		model.addAttribute(Constant.PAGE_KEY, info);
		model.addAttribute("list", list);
		return "role/roles/page";
	}
	
	@RequestMapping("/toAdd")
	@RequiresPermissions("role:add")
	public String toAdd(Model model){
		List<Organ> list = organService.selectAll();
		model.addAttribute("list", list);
		return "role/addRole";
	}
	
	@RequestMapping("/add")
	@RequiresPermissions("role:add")
	public String add(Role role,Model model){
		long now = CommonUtil.currentTime();
		role.setCreateDate(now);
		role.setUpdateDate(now);
		roleService.insert(role);
		return "redirect:roles";
	}
}
