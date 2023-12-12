package com.dlwlsla.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dlwlsla.test.dao.ProjectDAO;
import com.dlwlsla.test.dto.Project;

@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	ProjectDAO projectDAO;
	
	@Override
	public Integer insert(Project project) {
		int result = projectDAO.insert(project);
		return result;
	}

}
