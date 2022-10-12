package com.example.bradwell.Models;

import javax.persistence.*;

@Table
public class Content_Tag {


    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer content_tag_id;

    @Column
    private Integer content_id;

    @Column
    private Integer tag_id;


    public Content_Tag() {
    }

    public Content_Tag(Integer employment_tag_id, Integer content_id, Integer tag_id) {
        this.content_tag_id = employment_tag_id;
        this.content_id = content_id;
        this.tag_id = tag_id;
    }

    public Integer getEmployment_tag_id() {
        return content_tag_id;
    }

    public void setEmployment_tag_id(Integer employment_tag_id) {
        this.content_tag_id = employment_tag_id;
    }

    public Integer getcontent_id() {
        return content_id;
    }

    public void setcontent_id(Integer content_id) {
        this.content_id = content_id;
    }

    public Integer getTag_id() {
        return tag_id;
    }

    public void setTag_id(Integer tag_id) {
        this.tag_id = tag_id;
    }
}
