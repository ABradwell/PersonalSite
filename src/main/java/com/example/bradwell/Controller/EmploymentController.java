package com.example.bradwell.Controller;


import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Employment;
import com.example.bradwell.Services.BlurbService;
import com.example.bradwell.Services.Employment_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;


@Controller
public class EmploymentController {
    @Autowired
    private BlurbService blurbService;

    @Autowired
    private Employment_Service employmentService;

    @GetMapping("/getEmploymentCarousel")
    public String getAllEmploymentClasses(Model model){

        List<Employment> past_employment = employmentService.getAllEmployment();
        model.addAttribute("past_employment", past_employment);
        model.addAttribute("car_id", "work_carousel");

        return "carousel/employment_carousel";
    }

    @GetMapping("/getEmploymentCubes")
    public String getAllEmploymentCubes(Model model){

        List<Employment> past_employment = employmentService.getAllEmployment();
        model.addAttribute("past_employment", past_employment);

        return "WorkExperienceCube";
    }

    @GetMapping("getEmploymentPopup")
    public String getEmploymentPopupById (@RequestParam Integer id, Model model) {

        Employment employment_obj = employmentService.getEmploymentById(id);
        List<Blurb> employment_content = blurbService.getAllBlurbsByTypeAndId("EMPLOYMENT", employment_obj.getEmployment_id());

        model.addAttribute("employment", employment_obj);
        model.addAttribute("employment_content", employment_content);

        return "popup/employment_information";
    }


}
