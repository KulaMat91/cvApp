package com.example.cvapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InterestController {

    @GetMapping("/interests")
    public String getInterest(){
        return "interests/interests";
    }
}
