package com.example.bradwell.Controller;

import com.example.bradwell.Models.Article;
import com.example.bradwell.Services.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    private ArticleService articleService;

//    @GetMapping("Article")
//    private String getArticlePage(@RequestParam Integer id, Model model){
//
//        Article article = articleService.getArticleById(id);
//        model.addAttribute("article", article);
//
//        return "articlePage";
//
//    }

    @GetMapping("getArticleCarousel")
    private String getArticleCarousel(Model model) {

        List<Article> articles = articleService.getAllHighlightedArticles();
        model.addAttribute("articles", articles);
        model.addAttribute("car_id", "article_carousel");
        return "carousel/article_carousel";
    }




}
