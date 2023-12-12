package com.dlwlsla.test.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dlwlsla.test.dto.Project;

@Repository
public class ProjectDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	//프로젝트 생성
	public int insert(Project project) {
		String sql = " INSERT INTO `project` (p_name, p_des, p_s_date) VALUES (?, ?, ?) ";
		Object[] args = new Object[] {project.getPName(), project.getPDes(), project.getPsDate()} ;
		int result = jdbcTemplate.update(sql, args);
		return result;
	}
	
	
}
