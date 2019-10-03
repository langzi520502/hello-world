package com.example.demo.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@ResponseBody
public class hello {


    @RequestMapping("/hello")
    public String hello(){

        return "hello langzi";
    }

}
