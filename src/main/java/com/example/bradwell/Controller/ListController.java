package com.example.bradwell.Controller;

import com.example.bradwell.Models.Article;
import com.example.bradwell.Models.Tag;
import com.example.bradwell.Services.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ListController {

    @Autowired
    private ArticleService articleService;


    @GetMapping("Articles")
    private String getArticleCarousel(Model model) {

        List<Article> articles = articleService.getAllArticles();
        List<Tag> tags = new ArrayList<>();
        tags.add(new Tag(1, "test_tag"));

        model.addAttribute("articles", articles);
        model.addAttribute("tags", tags);
        return "listings/articles_list";
    }


}
