package com.example.bradwell.RowMappers;


import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Project;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProjectRowMapper implements RowMapper<Project> {

    @Override
    public Project mapRow(ResultSet rs, int rowNum) throws SQLException {
        Project project = new Project();
        project.setProject_id(rs.getInt("project_id"));
        project.setProject_name(rs.getString("project_name"));
        project.setProject_image_str(rs.getString("project_image_str"));
        project.setProject_sub_title(rs.getString("project_sub_title"));
        project.setProject_github_str(rs.getString("project_github_str"));
        project.setHighlighted(rs.getBoolean("highlighted"));
        return project;
    }
}