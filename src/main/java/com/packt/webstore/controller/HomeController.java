package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
    @RequestMapping
    public String Welcome(Model model){
        model.addAttribute("greeting","Welcome to webstore!");
        model.addAttribute("tagline","The one and only amaizing web store");
        return "welcome";
    }
    @RequestMapping("/welcome/greeting")
    public String greeting(){
        return "welcome";
    }

}
