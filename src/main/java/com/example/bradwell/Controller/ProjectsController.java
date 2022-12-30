package com.example.bradwell.Controller;


import com.example.bradwell.Models.*;
import com.example.bradwell.Services.ProjectService;
import com.example.bradwell.Services.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
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

    @GetMapping("Projects")
    private String getProjectLists(Model model) {

        List<Project> projects = projectService.getAllProjects();
        List<List<String>> alltags = new ArrayList<>();

        for (Project project : projects) {
            List<String> cur_tag = tagService.getAllTagValuesByProjectId(project.getProject_id());
            alltags.add(cur_tag);
        }

        model.addAttribute("projects", projects);
        model.addAttribute("alltags", alltags);

        return "listings/project_list";
    }

    @GetMapping("/getScreenshotCarousel")
    private String getProjectScreenshotCarousel(Model model, @RequestParam int proj_id) {

        List<String> screenshots = projectService.getAllScreenshotImagesByProjectId(proj_id);
        model.addAttribute("screenshots", screenshots);
        model.addAttribute("car_id", "screenshot_carousel");

        return "carousel/screenshot_carousel";
    }
}
