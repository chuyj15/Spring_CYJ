package com.dlwlsla.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dlwlsla.test.dto.Project;
import com.dlwlsla.test.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	ProjectService projectService;
	
	//인서트 페이지
	@RequestMapping(value="/insert", method = RequestMethod.GET)
	public void insert() {
		
	}
	
	//인서트프로 페이지
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	public String insertPro(Project project) {
		int result = projectService.insert(project);
		if (result >0 ) return "project/insert";
		else return "project/insert";
	}
}
