package com.example.bradwell.Models;

import javax.persistence.*;

@Table
public class Employment {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer employment_id;

    @Column
    private String company_name;

    @Column
    private String position_title;

    @Column
    private String job_description;

    @Column
    private String location;

    @Column
    private String start_date;

    @Column
    private String end_date;

    @Column
    private String image_src;

    public Employment() {

    }

    public Employment(Integer employment_id, String company_name, String position_title, String job_description, String location, String start_date, String end_date, String image_src) {
        this.employment_id = employment_id;
        this.company_name = company_name;
        this.position_title = position_title;
        this.job_description = job_description;
        this.location = location;
        this.start_date = start_date;
        this.end_date = end_date;
        this.image_src = image_src;
    }

    public Integer getEmployment_id(){
        return employment_id;
    }
    public void setEmployment_id(Integer id) {
        employment_id = id;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getJob_description() {
        return job_description;
    }

    public void setJob_description(String job_description) {
        this.job_description = job_description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getImage_src() {
        return image_src;
    }

    public void setImage_src(String image_src) {
        this.image_src = image_src;
    }

    public String getPosition_title() {
        return position_title;
    }

    public void setPosition_title(String position_title) {
        this.position_title = position_title;
    }
}
