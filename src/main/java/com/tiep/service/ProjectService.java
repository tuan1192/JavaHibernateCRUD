package com.tiep.service;

import java.util.List;

import com.tiep.model.Project;

public interface ProjectService {
	
	public void addProject(Project project);

	public List<Project> getAllProjects();

	public void deleteProject(Integer projectId);

	public Project getProject(int projectid);

	public Project updateProject(Project project);
}
