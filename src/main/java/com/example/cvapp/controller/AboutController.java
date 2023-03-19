package com.example.cvapp.controller;

import com.example.cvapp.model.AboutModel;
import com.example.cvapp.service.AboutService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/")
public class AboutController {

    private final AboutService aboutService;

//    @GetMapping
//    public String getAbout(Model model) {
//        AboutModel aboutModel = aboutService.getAboutModelById(1L);
//        model.addAttribute("aboutModel", aboutModel);
//        return "index";
//    }

    @GetMapping
    public String getAbout(Model model) {
        List<AboutModel> aboutModelList = aboutService.getAboutList();
        model.addAttribute("aboutModel", aboutModelList);
        return "index";
    }

    @PostMapping("/{id}")
    public RedirectView postEditAbout(@PathVariable("id") Long id, AboutModel aboutModel) {
        aboutService.saveEditAbout(aboutModel);
        return new RedirectView("/");
    }
}
