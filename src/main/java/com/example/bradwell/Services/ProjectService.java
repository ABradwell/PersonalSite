package com.example.bradwell.Services;

import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Project;
import com.example.bradwell.RowMappers.ProjectRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProjectService {

    @Autowired
    JdbcTemplate jdbcTemplate;

    private BlurbService blurbService;

    public List<Project> getAllProjects(){

        String SQL_CMD = "SELECT * FROM project";
        List<Project> projects = null;
        try {
            projects = jdbcTemplate.query(SQL_CMD, new ProjectRowMapper());
        } catch (Exception e) {
            System.out.println("No Projects in Database.");
        }
        return projects;
    }

    public Project getProjectById(int id) {

        String SQL_CMD = "SELECT * FROM project WHERE project_id = " + id;
        Project project = null;

        try {
            project = jdbcTemplate.queryForObject(SQL_CMD, new ProjectRowMapper());
        } catch (Exception e) {
            System.out.println("No Project exists for the given id: " + id);
        }
        return project;
    }

    public List<Blurb> getProjectPageContentById(int id) {
        return blurbService.getAllBlurbsByTypeAndId("PROJECT", id);
    }
}
