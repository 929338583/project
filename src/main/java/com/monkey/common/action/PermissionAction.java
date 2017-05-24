package com.monkey.common.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.monkey.common.bean.Permission;
import com.monkey.common.bean.Role;
import com.monkey.common.bean.RolePermission;
import com.monkey.common.pojo.ResponseView;
import com.monkey.common.service.PermissionService;
import com.monkey.common.service.RoleService;

@Controller
@RequestMapping("/permission")
public class PermissionAction {

	@Resource
	private PermissionService permissionService;
	
	@Resource
	private RoleService roleService;
	
	
	@RequestMapping("/permission")
	@RequiresPermissions("pmsn:query")
	public String query(Model model,Integer rid){
		List<Permission> list = permissionService.select(rid);
		
		List<Role> roles = roleService.select(new Role());
		model.addAttribute("list", list);
		model.addAttribute("roles", roles);
		model.addAttribute("rid", rid);
		return "permission/permission";
	}
	
	@RequestMapping("/add")
	@ResponseBody
	@RequiresPermissions("pmsn:add")
	public void save(HttpServletResponse response,Model model,@RequestBody RolePermission rolePermission) throws IOException{
		int code = permissionService.insert(rolePermission);
		response.getWriter().print(new ResponseView(code));
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	@RequiresPermissions("pmsn:delete")
	public void delete(HttpServletResponse response,Model model,@RequestBody RolePermission rolePermission) throws IOException{
		int code = permissionService.delete(rolePermission);
		response.getWriter().print(new ResponseView(code));
	}
}
