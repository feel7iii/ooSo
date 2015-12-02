package com.atom.ooSo.modules.cms.web;

import java.util.Map;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springside.modules.web.Servlets;

import com.atom.ooSo.common.constants.Const;
import com.atom.ooSo.common.domain.Cperson;
import com.atom.ooSo.modules.cms.domain.Task;
import com.atom.ooSo.modules.cms.service.TaskService;
import com.google.common.collect.Maps;

@Controller
@RequestMapping(value = "/")
public class TaskController {

	@Autowired
	private TaskService taskService;

	private static Map<String, String> sortTypes = Maps.newLinkedHashMap();

	static {
		sortTypes.put("auto", "自动");
		sortTypes.put("title", "标题");
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String getSomePage(Model ooModel, ServletRequest request,
			@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNum) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Long cpersonId = getCurrentPersonId();
		Page<Task> tasks = taskService.getPersonTask(cpersonId, searchParams, pageNum, Const.PAGE_SIZE, sortType);
		ooModel.addAttribute("tasks", tasks);
		ooModel.addAttribute("sortTypes", sortTypes);
		ooModel.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		return "site.welcome";
	}
	
	private Long getCurrentPersonId() {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
			    .getAuthentication()
			    .getPrincipal();
		Cperson cperson = taskService.findByLoginName(userDetails.getUsername());
		return cperson.getId();
	}

}
