package com.example.cvapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SkillsController {

    @GetMapping("/skills")
    public String getSkills(){
        return  "skills/skills";
    }
}
