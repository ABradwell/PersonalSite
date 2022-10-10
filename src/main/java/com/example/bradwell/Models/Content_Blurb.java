package com.example.bradwell.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Content_Blurb {

    @Id
    @Column
    private Integer content_blurb_id;

    @Column
    private Integer content_type_id;

    @Column
    private Integer blurb_id;

    @Column
    private Integer content_id;

    public Content_Blurb(int content_blurb_id, int content_type_id, int blurb_id, int content_id) {
        this.content_blurb_id = content_blurb_id;
        this.content_type_id = content_type_id;
        this.blurb_id = blurb_id;
        this.content_id = content_id;
    }

    public Content_Blurb() {
    }

    public int getContent_blurb_id() {
        return content_blurb_id;
    }

    public void setContent_blurb_id(int content_blurb_id) {
        this.content_blurb_id = content_blurb_id;
    }

    public int getContent_type_id() {
        return content_type_id;
    }

    public void setContent_type_id(int content_type_id) {
        this.content_type_id = content_type_id;
    }

    public int getBlurb_id() {
        return blurb_id;
    }

    public void setBlurb_id(int blurb_id) {
        this.blurb_id = blurb_id;
    }

    public int getContent_id() {
        return content_id;
    }

    public void setContent_id(int content_id) {
        this.content_id = content_id;
    }
}
