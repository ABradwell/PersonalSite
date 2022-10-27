package com.example.bradwell.Controller;


import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Employment;
import com.example.bradwell.Models.Project;
import com.example.bradwell.Models.Tag;
import com.example.bradwell.Services.ProjectService;
import com.example.bradwell.Services.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProjectsController {

    @Autowired
    private ProjectService projectService;

    @Autowired
    private TagService tagService;

    @GetMapping("projectPage")
    private String getProjectById(@RequestParam Integer id, Model model) {

        Project project = projectService.getProjectById(id);
        List<Blurb> content = projectService.getProjectPageContentById(id);
        List<String> tags = tagService.getAllTagValuesByProjectId(id);
        model.addAttribute("project", project);
        model.addAttribute("content", content);
        model.addAttribute("tags", tags);

        return "projectPage";
    }

    @GetMapping("getProjectCarousel")
    private String getProjectCarousel(Model model) {

        List<Project> projects = projectService.getAllHighlightedProjects();
        model.addAttribute("projects", projects);
        model.addAttribute("car_id", "project_carousel");

        return "carousel/projects_carousel";
    }
}
