package com.example.bradwell.RowMappers;


import com.example.bradwell.Models.Article;
import com.example.bradwell.Models.Blurb;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ArticleRowMapper implements RowMapper<Article> {

    @Override
    public Article mapRow(ResultSet rs, int rowNum) throws SQLException {

        Article article = new Article();

        article.setArticle_id(rs.getInt("article_id"));
        article.setArticle_content(rs.getString("article_content"));
        article.setArticle_title(rs.getString("article_title"));
        article.setArticle_subtitle(rs.getString("article_subtitle"));
        article.setArticle_image_str(rs.getString("article_image_str"));

        return article;
    }
}