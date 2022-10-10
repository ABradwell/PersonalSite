package com.example.bradwell.Models;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Blurb {
    @Id
    @Column
    private Integer blurb_id;

    @Column
    private String title;

    @Column
    private String blurb_content;

    public Blurb() {
    }

    public Blurb(int blurb_id, String title, String blurb_content) {
        this.blurb_id = blurb_id;
        this.title = title;
        this.blurb_content = blurb_content;
    }

    public int getBlurb_id() {
        return blurb_id;
    }

    public void setBlurb_id(int blurb_id) {
        this.blurb_id = blurb_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBlurb_content() {
        return blurb_content;
    }

    public void setBlurb_content(String blurb_content) {
        this.blurb_content = blurb_content;
    }
}
