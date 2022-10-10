package com.example.bradwell.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Tag {

    @Id
    @Column
    private Integer tag_id;

    @Column
    private String tag_value;


    public Tag() {

    }

    public Tag(Integer tag_id, String tag_value) {
        this.tag_id = tag_id;
        this.tag_value = tag_value;
    }

    public Integer getTag_id() {
        return tag_id;
    }

    public void setTag_id(Integer tag_id) {
        this.tag_id = tag_id;
    }

    public String getTag_value() {
        return tag_value;
    }

    public void setTag_value(String tag_value) {
        this.tag_value = tag_value;
    }
}
