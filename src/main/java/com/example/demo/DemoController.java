package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demo")
public class DemoController {

    @Value("${demoapp.myname}")
    private String my_name;

    @GetMapping
    public String HelloWorld(){
        return "Hello, guys! I'm the Demo Application v1.5!" + " - " + my_name;
    }
}
