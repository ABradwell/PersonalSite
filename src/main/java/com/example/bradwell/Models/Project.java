package com.example.bradwell.Models;

import javax.persistence.*;

@Table
public class Project {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer project_id;

    @Column
    private String project_name;

    @Column
    private String project_sub_title;

    @Column
    private String project_image_str;

    @Column
    private String project_github_str;

    @Column
    private Boolean highlighted;

    public Project() {
    }

    public Project(Integer project_id, String project_name, String project_sub_title, String project_image_str, String project_github_str, Boolean highlighted) {
        this.project_id = project_id;
        this.project_name = project_name;
        this.project_sub_title = project_sub_title;
        this.project_image_str = project_image_str;
        this.project_github_str = project_github_str;
        this.highlighted = highlighted;
    }

    public Integer getProject_id() {
        return project_id;
    }

    public void setProject_id(Integer project_id) {
        this.project_id = project_id;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public String getProject_sub_title() {
        return project_sub_title;
    }

    public void setProject_sub_title(String project_sub_title) {
        this.project_sub_title = project_sub_title;
    }

    public String getProject_image_str() {
        return project_image_str;
    }

    public void setProject_image_str(String project_image_str) {
        this.project_image_str = project_image_str;
    }

    public Boolean getHighlighted() {
        return highlighted;
    }

    public void setHighlighted(Boolean highlighted) {
        this.highlighted = highlighted;
    }

    public String getProject_github_str() {
        return project_github_str;
    }

    public void setProject_github_str(String project_github_str) {
        this.project_github_str = project_github_str;
    }
}
