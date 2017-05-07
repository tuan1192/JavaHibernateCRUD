package com.tiep.dao;

import java.util.List;

import com.tiep.model.Project;

public interface ProjectDAO {

	public void addProject(Project employee);

	public List<Project> getAllProjects();

	public void deleteProject(Integer projectId);

	public Project updateProject(Project project);

	public Project getProject(int projectid);
}
