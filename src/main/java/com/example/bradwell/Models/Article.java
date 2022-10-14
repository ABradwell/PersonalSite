package com.example.bradwell.Models;

import javax.persistence.*;

@Table
public class Article {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer article_id;
    @Column
    private String article_title;
    @Column
    private String article_subtitle;
    @Column
    private String article_link;
    @Column
    private String article_image_str;

    public Article() {
    }

    public Article(Integer article_id, String article_title, String article_subtitle, String article_link, String article_image_str) {
        this.article_id = article_id;
        this.article_title = article_title;
        this.article_subtitle = article_subtitle;
        this.article_link = article_link;
        this.article_image_str = article_image_str;
    }

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getArticle_title() {
        return article_title;
    }

    public void setArticle_title(String article_title) {
        this.article_title = article_title;
    }

    public String getArticle_subtitle() {
        return article_subtitle;
    }

    public void setArticle_subtitle(String article_subtitle) {
        this.article_subtitle = article_subtitle;
    }

    public String getArticle_Link() {
        return article_link;
    }

    public void setArticle_Link(String article_link) {
        this.article_link = article_link;
    }

    public String getArticle_image_str() {
        return article_image_str;
    }

    public void setArticle_image_str(String article_image_str) {
        this.article_image_str = article_image_str;
    }
}
