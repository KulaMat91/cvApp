package com.example.cvapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AwardsController {

    @GetMapping("/awards")
    public String getAbout(){
        return "awards/awards";
    }
}
