package com.example.bradwell.Services;


import com.example.bradwell.Models.Article;
import com.example.bradwell.Models.Employment;
import com.example.bradwell.RowMappers.ArticleRowMapper;
import com.example.bradwell.RowMappers.EmploymentRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleService {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Article> getAllArticles () {
        String SQL_CMD = "SELECT * FROM article";

        List<Article> articles = null;
        try {
            articles = jdbcTemplate.query(SQL_CMD, new ArticleRowMapper());
        } catch (Exception e) {
            System.out.println("No Articles in Database.");
        }
        return articles;
    }

    public List<Article> getAllHighlightedArticles() {

        String SQL_CMD = "SELECT * FROM article WHERE highlighted = TRUE";

        List<Article> articles = null;
        try {
            articles = jdbcTemplate.query(SQL_CMD, new ArticleRowMapper());
        } catch (Exception e) {
            System.out.println("No Articles in Database.");
        }

        return articles;

    }

    public Article getArticleById (int id) {

        String SQL_CMD = "SELECT * FROM article WHERE article_id = " + id;
        Article article = null;

        try {
            article = jdbcTemplate.queryForObject(SQL_CMD, Article.class);

        } catch (DataAccessException e) {
            System.out.println("No article found for id: " + id + " RETURNING NULL.");
        }

        return article;

    }
}
