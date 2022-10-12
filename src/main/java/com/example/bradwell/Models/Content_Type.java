package com.example.bradwell.Models;

import javax.persistence.*;

@Table
public class Content_Type {


    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer content_type_id;

    @Column
    private String content_type_value;

    public Content_Type() {
    }

    public Content_Type(int content_type_id, String content_type_value) {
        this.content_type_id = content_type_id;
        this.content_type_value = content_type_value;
    }

    public int getContent_type_id() {
        return content_type_id;
    }

    public void setContent_type_id(int content_type_id) {
        this.content_type_id = content_type_id;
    }

    public String getcontent_type_value() {
        return content_type_value;
    }

    public void setcontent_type_value(String content_type_value) {
        this.content_type_value = content_type_value;
    }
}
