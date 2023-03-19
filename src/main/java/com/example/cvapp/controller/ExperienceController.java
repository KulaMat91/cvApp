package com.example.cvapp.controller;

import com.example.cvapp.model.ExperienceModel;
import com.example.cvapp.service.ExperienceService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ExperienceController {

    private final ExperienceService experienceService;

    @GetMapping("/experience")
    public String getExperience(Model model){
        List<ExperienceModel> experienceModelList = experienceService.getExperienceList();
        model.addAttribute("experienceModel", experienceModelList);
        return "experience/experience";
    }

    @GetMapping("/addExperience")
    public String getAddExperience(){
        return "experience/addExperience";
    }

    @PostMapping("/addExperience")
    public RedirectView postAddExperience(ExperienceModel experienceModel){
        experienceService.addExperience(experienceModel);
        return new RedirectView("/experience");
    }

    @GetMapping("/editExperience/{id}")
    public String getEditExperience(@PathVariable("id") Long id, Model model){
        ExperienceModel experienceModel = experienceService.getExperienceById(id);
        model.addAttribute("experienceModel", experienceModel);
        return "experience/editExperience";
    }

    @PostMapping("/addExperience/{id}")
    public RedirectView postEditExperience(@PathVariable("id") Long id, ExperienceModel experienceModel){
        experienceService.saveEditExperience(experienceModel);
        return new RedirectView("/experience");
    }

    @PostMapping("/editExperience/{id}")
    public RedirectView removeExperience(@PathVariable("id") Long id){
        experienceService.removeExperience(id);
        return new RedirectView("/experience");
    }





}
