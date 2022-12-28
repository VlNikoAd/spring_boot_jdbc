package ru.nikolaenko.spring_jdbc.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.nikolaenko.spring_jdbc.service.MyService;

@RestController
public class MyController {

    private final MyService myService;

    public MyController(MyService myService) {
        this.myService = myService;
    }

    @GetMapping("/products/fetch-product")
    public String getProductName(@RequestParam(value = "name", required = false) String name) {
        return myService.getProductName(name);
    }
}