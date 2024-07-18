package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/docker-demo")
public class DemoController {

    @Value("${var.myname}")
    private String my_name;

    @Value("${var.app.name.version}")
    private String app_name_and_version;

    @GetMapping
    public String HelloWorld(){
        return "Hello, " + my_name + "! I'm the " + app_name_and_version + " :)";
    }
}
