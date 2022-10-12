package com.example.bradwell.Controller;


import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Employment;
import com.example.bradwell.Models.Project;
import com.example.bradwell.Services.ProjectService;
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

    @GetMapping("projectPage")
    private String getProjectById(@RequestParam Integer id, Model model) {

        Project project = projectService.getProjectById(id);
        List<Blurb> content = projectService.getProjectPageContentById(id);

        model.addAttribute("project", project);
        model.addAttribute("content", content);

        return "projectPage";
    }

    @GetMapping("getProjectCarousel")
    private String getProjectCarousel(Model model) {

        List<Project> projects = projectService.getAllProjects();
        model.addAttribute("projects", projects);
        model.addAttribute("car_id", "project_carousel");

        return "carousel/projects_carousel";
    }
}
