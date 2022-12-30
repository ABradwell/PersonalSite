package com.example.bradwell.Controller;

import com.example.bradwell.Models.Article;
import com.example.bradwell.Models.Content_Type;
import com.example.bradwell.Models.Project;
import com.example.bradwell.Models.Tag;
import com.example.bradwell.Services.ArticleService;
import com.example.bradwell.Services.MiscService;
import com.example.bradwell.Services.ProjectService;
import com.example.bradwell.Services.TagService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    @GetMapping("/")
    public String index() {
        return "index.html";
    }


    @Autowired
    private ArticleService articleService;

    @Autowired
    private TagService tagService;

    @Autowired
    private MiscService miscService;

    @Autowired
    private ProjectService projectService;

    @GetMapping("/tagEditor")
    public String getTagPage(Model model) {
        List<Tag> tags = tagService.getAllTags();
        List<Content_Type> content_types= miscService.getAllContentType();

        model.addAttribute("content_types", content_types);
        model.addAttribute("tags", tags);

        return "admin/tagPage";
    }

    @GetMapping("/Resume")
    public String getResumePage(Model model) {

        return "resume";
    }

}
