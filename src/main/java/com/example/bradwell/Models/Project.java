package com.example.bradwell.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Project {

    @Id
    @Column
    private Integer project_id;

    @Column
    private String project_name;

    @Column
    private String project_sub_title;

    @Column
    private String project_image_str;

    public Project() {
    }

    public Project(Integer project_id, String project_name, String project_sub_title, String project_image_str) {
        this.project_id = project_id;
        this.project_name = project_name;
        this.project_sub_title = project_sub_title;
        this.project_image_str = project_image_str;
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
}
