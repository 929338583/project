package com.monkey.common.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monkey.common.bean.Organ;
import com.monkey.common.constant.Constant;
import com.monkey.common.service.OrganService;
import com.monkey.common.util.CommonUtil;

@Controller
@RequestMapping("/organ")
public class OrganAction {

	@Resource
	private OrganService organService;
	
	@RequestMapping("/organs")
	@RequiresPermissions("organ:query")
	public String query(Organ organ,Model model){
		List<Organ> list = organService.selectAll();
		model.addAttribute("list", list);
		return "organ/organs";
	}
	
	@RequestMapping("/toAdd")
	@RequiresPermissions("organ:add")
	public String toAdd(Model model){
		Organ organ = new Organ();
		organ.setName(Constant.STR_EMPTY);
		List<Organ> organs = organService.selectAll();
		model.addAttribute("list",organs);
		return "organ/addOrgan";
	}
	
	@RequestMapping("/add")
	@RequiresPermissions("organ:add")
	public String add(Organ organ,Model model){
		long now = CommonUtil.currentTime();
		organ.setCreateDate(now);
		organ.setUpdateDate(now);
		organService.insert(organ);
		return "redirect:/organ/organs";
	}
	
	@RequestMapping("/toEdit")
	@RequiresPermissions("organ:edit")
	public String toEdit(Model model,Integer id){
		Organ organ = organService.get(id);
		model.addAttribute("data",organ);
		return "organ/editOrgan";
	}
	
	@RequestMapping("/edit")
	@RequiresPermissions("organ:edit")
	public String edit(Organ organ,Model model){
		organService.update(organ);
		return "redirect:/organ/organs";
	}
	
	@RequestMapping("/delete")
	@RequiresPermissions("organ:delete")
	public String delete(Model model,Integer id){
		organService.delete(id);
		return "redirect:/organ/organs";
	}
}
